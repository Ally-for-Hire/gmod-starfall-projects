--@name Quadratic Target Model Generator
--@author Merydian9
--@shared
--@model models/jaanus/wiretool/wiretool_range.mdl

wire.adjustPorts({TargetPos = "vector", TargetVel = "vector"}, {HitPos = "vector"})
    
-- Generate Vandermonde matrix for cubic regression
function generateCubicMatrix(T)
    local A = {}
    for _, t in ipairs(T) do
        A[#A + 1] = {t^3, t^2, t, 1}
    end
    return A
end

-- Transpose a matrix
function transpose(matrix)
    local result = {}
    for i = 1, #matrix[1] do
        result[i] = {}
        for j = 1, #matrix do
            result[i][j] = matrix[j][i]
        end
    end
    return result
end

-- Matrix multiplication
function multiply(A, B)
    local result = {}
    for i = 1, #A do
        result[i] = {}
        for j = 1, #B[1] do
            local sum = 0
            for k = 1, #A[1] do
                sum = sum + A[i][k] * B[k][j]
            end
            result[i][j] = sum
        end
    end
    return result
end

-- Invert a 4x4 matrix
function invertMatrix4x4(M)
    local det = 
        M[1][1] * (M[2][2] * (M[3][3] * M[4][4] - M[3][4] * M[4][3]) -
                   M[2][3] * (M[3][2] * M[4][4] - M[3][4] * M[4][2]) +
                   M[2][4] * (M[3][2] * M[4][3] - M[3][3] * M[4][2])) -
        M[1][2] * (M[2][1] * (M[3][3] * M[4][4] - M[3][4] * M[4][3]) -
                   M[2][3] * (M[3][1] * M[4][4] - M[3][4] * M[4][1]) +
                   M[2][4] * (M[3][1] * M[4][3] - M[3][3] * M[4][1])) +
        M[1][3] * (M[2][1] * (M[3][2] * M[4][4] - M[3][4] * M[4][2]) -
                   M[2][2] * (M[3][1] * M[4][4] - M[3][4] * M[4][1]) +
                   M[2][4] * (M[3][1] * M[4][2] - M[3][2] * M[4][1])) -
        M[1][4] * (M[2][1] * (M[3][2] * M[4][3] - M[3][3] * M[4][2]) -
                   M[2][2] * (M[3][1] * M[4][3] - M[3][3] * M[4][1]) +
                   M[2][3] * (M[3][1] * M[4][2] - M[3][2] * M[4][1]))

    if det == 0 then
        error("Matrix is singular and cannot be inverted")
    end

    local invDet = 1 / det

    local adj = {}
    for i = 1, 4 do
        adj[i] = {}
    end

    -- Fill in adjugate matrix (manual for 4x4; repeat for all entries)
    -- Here for demonstration purposes, you should compute all entries systematically
    adj[1][1] =   M[2][2] * (M[3][3] * M[4][4] - M[3][4] * M[4][3])
    adj[1][2] = -(M[2][1] * (M[3][3] * M[4][4] - M[3][4] * M[4][3]))
    adj[1][3] =   M[2][1] * (M[3][2] * M[4][4] - M[3][4] * M[4][2])
    adj[1][4] = -(M[2][1] * (M[3][2] * M[4][3] - M[3][3] * M[4][2]))

    -- Invert by dividing adjugate by determinant
    local inverse = {}
    for i = 1, 4 do
        inverse[i] = {}
        for j = 1, 4 do
            inverse[i][j] = adj[j][i] * invDet -- Adjugate transpose
        end
    end

    return inverse
end

-- Solve cubic regression
function cubicRegression(T, Vectors, component)
    local P = {}
    for _, vec in ipairs(Vectors) do
        table.insert(P, vec[component])
    end

    local A = generateCubicMatrix(T)
    local At = transpose(A)
    local AtA = multiply(At, A)
    local AtAInv = invertMatrix4x4(AtA)
    local AtP = multiply(At, {P})
    local coefficients = multiply(AtAInv, AtP)
    return coefficients
end

-- Predict position using cubic coefficients
function predictCubicPosition(coefficients, t)
    local a3, a2, a1, a0 = coefficients[1][1], coefficients[2][1], coefficients[3][1], coefficients[4][1]
    return a3 * t^3 + a2 * t^2 + a1 * t + a0
end

-- Predict future Vector position
function predictFutureVector(T, Vectors, PredictedT)
    local cx = cubicRegression(T, Vectors, "x")
    local cy = cubicRegression(T, Vectors, "y")
    local cz = cubicRegression(T, Vectors, "z")

    local px = predictCubicPosition(cx, PredictedT)
    local py = predictCubicPosition(cy, PredictedT)
    local pz = predictCubicPosition(cz, PredictedT)

    return Vector:new(px, py, pz)
end

-- Example usage
local T = {0, 0.1, 0.2, 0.3, 0.4}  -- Time array
local Positions = {  -- Positional Vectors
    Vector:new(0, 0, 0),
    Vector:new(1, 1, 1),
    Vector:new(5, 5, 5),
    Vector:new(9, 9, 9),
    Vector:new(14, 14, 14)
}
local PredictedT = 0.5  -- Target future time

-- Predict the future position at PredictedT
local futurePosition = predictFutureVector(T, Positions, PredictedT)

-- Output results
print("Predicted Position at T = ", PredictedT, ": (", futurePosition.x, futurePosition.y, futurePosition.z, ")")
