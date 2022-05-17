contract main {




// =====================  Runtime code  =====================


#
#  - viewInterestAmount(address arg1, address arg2)
#  - getInterestAmount(address arg1, address arg2, bool arg3)
#
address owner;
mapping of uint8 stor1;
uint256 blocksPerYear;
uint256 minRate;
uint256 basicSensitivity;
uint256 jumpPoint;
uint256 jumpSensitivity;
uint256 spreadRate;

function operators(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function getMinRate() payable {
    return minRate
}

function getOwner() payable {
    return owner
}

function blocksPerYear() payable {
    return blocksPerYear
}

function getJumpPoint() payable {
    return jumpPoint
}

function getBasicSensitivity() payable {
    return basicSensitivity
}

function getJumpSensitivity() payable {
    return jumpSensitivity
}

function getSpreadRate() payable {
    return spreadRate
}

function _fallback() payable {
    revert
}

function ownershipTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, ''
    owner = arg1
    return 1
}

function setOperators(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, ''
    stor1[address(arg1)] = uint8(arg2)
    return 1
}

function setMinRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Only Operators'
    minRate = arg1
    return 1
}

function setJumpPoint(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Only Operators'
    jumpPoint = arg1
    return 1
}

function setSpreadRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Only Operators'
    spreadRate = arg1
    return 1
}

function setBlocksPerYear(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Only Operators'
    blocksPerYear = arg1
    return 1
}

function setJumpSensitivity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Only Operators'
    jumpSensitivity = arg1
    return 1
}

function setBasicSensitivity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[msg.sender]:
        if owner != msg.sender:
            revert with 0, 'Only Operators'
    basicSensitivity = arg1
    return 1
}

function getSIRandBIR(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1:
        if not arg2:
            if not arg1:
                revert with 0, ''
            if 0 / arg1 < jumpPoint:
                if not 0 / arg1:
                    if minRate < 0:
                        revert with 0, 'a'
                    if not 0 / arg1:
                        return 0, minRate
                    if minRate * 0 / arg1 / 0 / arg1 != minRate:
                        revert with 0, 'm'
                    if not minRate * 0 / arg1 / 10^18:
                        return 0, minRate
                    if spreadRate * minRate * 0 / arg1 / 10^18 / minRate * 0 / arg1 / 10^18 != spreadRate:
                        revert with 0, 'm'
                    return spreadRate * minRate * 0 / arg1 / 10^18 / 10^18, minRate
                if basicSensitivity * 0 / arg1 / 0 / arg1 != basicSensitivity:
                    revert with 0, 'm'
                if minRate + (basicSensitivity * 0 / arg1 / 10^18) < basicSensitivity * 0 / arg1 / 10^18:
                    revert with 0, 'a'
                if not 0 / arg1:
                    return 0, minRate + (basicSensitivity * 0 / arg1 / 10^18)
                if (minRate * 0 / arg1) + (basicSensitivity * 0 / arg1 / 10^18 * 0 / arg1) / 0 / arg1 != minRate + (basicSensitivity * 0 / arg1 / 10^18):
                    revert with 0, 'm'
                if not (minRate * 0 / arg1) + (basicSensitivity * 0 / arg1 / 10^18 * 0 / arg1) / 10^18:
                    return 0, minRate + (basicSensitivity * 0 / arg1 / 10^18)
                if spreadRate * (minRate * 0 / arg1) + (basicSensitivity * 0 / arg1 / 10^18 * 0 / arg1) / 10^18 / (minRate * 0 / arg1) + (basicSensitivity * 0 / arg1 / 10^18 * 0 / arg1) / 10^18 != spreadRate:
                    revert with 0, 'm'
                return spreadRate * (minRate * 0 / arg1) + (basicSensitivity * 0 / arg1 / 10^18 * 0 / arg1) / 10^18 / 10^18, 
                       minRate + (basicSensitivity * 0 / arg1 / 10^18)
            if jumpPoint > 0 / arg1:
                revert with 0, ''
            if not (0 / arg1) - jumpPoint:
                if not jumpPoint:
                    if minRate < minRate:
                        revert with 0, 'a'
                    if not 0 / arg1:
                        return 0, minRate
                    if minRate * 0 / arg1 / 0 / arg1 != minRate:
                        revert with 0, 'm'
                    if not minRate * 0 / arg1 / 10^18:
                        return 0, minRate
                    if spreadRate * minRate * 0 / arg1 / 10^18 / minRate * 0 / arg1 / 10^18 != spreadRate:
                        revert with 0, 'm'
                    return spreadRate * minRate * 0 / arg1 / 10^18 / 10^18, minRate
                if basicSensitivity * jumpPoint / jumpPoint != basicSensitivity:
                    revert with 0, 'm'
                if (basicSensitivity * jumpPoint / 10^18) + minRate < minRate:
                    revert with 0, 'a'
                if not 0 / arg1:
                    return 0, (basicSensitivity * jumpPoint / 10^18) + minRate
                if (basicSensitivity * jumpPoint / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 0 / arg1 != (basicSensitivity * jumpPoint / 10^18) + minRate:
                    revert with 0, 'm'
                if not (basicSensitivity * jumpPoint / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18:
                    return 0, (basicSensitivity * jumpPoint / 10^18) + minRate
                if spreadRate * (basicSensitivity * jumpPoint / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18 / (basicSensitivity * jumpPoint / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18 != spreadRate:
                    revert with 0, 'm'
                return spreadRate * (basicSensitivity * jumpPoint / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18 / 10^18, 
                       (basicSensitivity * jumpPoint / 10^18) + minRate
            if (0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / (0 / arg1) - jumpPoint != jumpSensitivity:
                revert with 0, 'm'
            if not jumpPoint:
                if minRate < minRate:
                    revert with 0, 'a'
                if ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + minRate < minRate:
                    revert with 0, 'a'
                if not 0 / arg1:
                    return 0, ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + minRate
                if ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 0 / arg1 != ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + minRate:
                    revert with 0, 'm'
                if not ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18:
                    return 0, ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + minRate
                if spreadRate * ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18 / ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18 != spreadRate:
                    revert with 0, 'm'
                return spreadRate * ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18 / 10^18, 
                       ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + minRate
            if basicSensitivity * jumpPoint / jumpPoint != basicSensitivity:
                revert with 0, 'm'
            if (basicSensitivity * jumpPoint / 10^18) + minRate < minRate:
                revert with 0, 'a'
            if (0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 < 0:
                revert with 0, 'a'
            if not 0 / arg1:
                return 0, 
                       ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + (basicSensitivity * jumpPoint / 10^18) + minRate
            if ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 0 / arg1) + (basicSensitivity * jumpPoint / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 0 / arg1 != ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + (basicSensitivity * jumpPoint / 10^18) + minRate:
                revert with 0, 'm'
            if not ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 0 / arg1) + (basicSensitivity * jumpPoint / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18:
                return 0, 
                       ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + (basicSensitivity * jumpPoint / 10^18) + minRate
            if spreadRate * ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 0 / arg1) + (basicSensitivity * jumpPoint / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18 / ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 0 / arg1) + (basicSensitivity * jumpPoint / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18 != spreadRate:
                revert with 0, 'm'
            return spreadRate * ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 0 / arg1) + (basicSensitivity * jumpPoint / 10^18 * 0 / arg1) + (minRate * 0 / arg1) / 10^18 / 10^18, 
                   ((0 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + (basicSensitivity * jumpPoint / 10^18) + minRate
    else:
        if not arg2:
            if 0 < jumpPoint:
                if minRate < 0:
                    revert with 0, 'a'
                return 0, minRate
            if jumpPoint > 0:
                revert with 0, ''
            if not -jumpPoint:
                if not jumpPoint:
                    if minRate < minRate:
                        revert with 0, 'a'
                    return 0, minRate
                if basicSensitivity * jumpPoint / jumpPoint != basicSensitivity:
                    revert with 0, 'm'
                if (basicSensitivity * jumpPoint / 10^18) + minRate < minRate:
                    revert with 0, 'a'
                return 0, (basicSensitivity * jumpPoint / 10^18) + minRate
            if -1 * jumpSensitivity * jumpPoint / -jumpPoint != jumpSensitivity:
                revert with 0, 'm'
            if not jumpPoint:
                if minRate < minRate:
                    revert with 0, 'a'
                if (-1 * jumpSensitivity * jumpPoint / 10^18) + minRate < minRate:
                    revert with 0, 'a'
                return 0, (-1 * jumpSensitivity * jumpPoint / 10^18) + minRate
            if basicSensitivity * jumpPoint / jumpPoint != basicSensitivity:
                revert with 0, 'm'
            if (basicSensitivity * jumpPoint / 10^18) + minRate < minRate:
                revert with 0, 'a'
            if -1 * jumpSensitivity * jumpPoint / 10^18 < 0:
                revert with 0, 'a'
            return 0, (-1 * jumpSensitivity * jumpPoint / 10^18) + (basicSensitivity * jumpPoint / 10^18) + minRate
    ('param', 'arg2')
    if 10^18 * arg2 / arg2 != 10^18:
        revert with 0, 'm'
    if not arg1:
        revert with 0, ''
    if 10^18 * arg2 / arg1 < jumpPoint:
        if not 10^18 * arg2 / arg1:
            if minRate < 0:
                revert with 0, 'a'
            if not 10^18 * arg2 / arg1:
                return 0, minRate
            if minRate * 10^18 * arg2 / arg1 / 10^18 * arg2 / arg1 != minRate:
                revert with 0, 'm'
            if not minRate * 10^18 * arg2 / arg1 / 10^18:
                return 0, minRate
            if spreadRate * minRate * 10^18 * arg2 / arg1 / 10^18 / minRate * 10^18 * arg2 / arg1 / 10^18 != spreadRate:
                revert with 0, 'm'
            return spreadRate * minRate * 10^18 * arg2 / arg1 / 10^18 / 10^18, minRate
        if basicSensitivity * 10^18 * arg2 / arg1 / 10^18 * arg2 / arg1 != basicSensitivity:
            revert with 0, 'm'
        if minRate + (basicSensitivity * 10^18 * arg2 / arg1 / 10^18) < basicSensitivity * 10^18 * arg2 / arg1 / 10^18:
            revert with 0, 'a'
        if not 10^18 * arg2 / arg1:
            return 0, minRate + (basicSensitivity * 10^18 * arg2 / arg1 / 10^18)
        if (minRate * 10^18 * arg2 / arg1) + (basicSensitivity * 10^18 * arg2 / arg1 / 10^18 * 10^18 * arg2 / arg1) / 10^18 * arg2 / arg1 != minRate + (basicSensitivity * 10^18 * arg2 / arg1 / 10^18):
            revert with 0, 'm'
        if not (minRate * 10^18 * arg2 / arg1) + (basicSensitivity * 10^18 * arg2 / arg1 / 10^18 * 10^18 * arg2 / arg1) / 10^18:
            return 0, minRate + (basicSensitivity * 10^18 * arg2 / arg1 / 10^18)
        if spreadRate * (minRate * 10^18 * arg2 / arg1) + (basicSensitivity * 10^18 * arg2 / arg1 / 10^18 * 10^18 * arg2 / arg1) / 10^18 / (minRate * 10^18 * arg2 / arg1) + (basicSensitivity * 10^18 * arg2 / arg1 / 10^18 * 10^18 * arg2 / arg1) / 10^18 != spreadRate:
            revert with 0, 'm'
        return spreadRate * (minRate * 10^18 * arg2 / arg1) + (basicSensitivity * 10^18 * arg2 / arg1 / 10^18 * 10^18 * arg2 / arg1) / 10^18 / 10^18, 
               minRate + (basicSensitivity * 10^18 * arg2 / arg1 / 10^18)
    if jumpPoint > 10^18 * arg2 / arg1:
        revert with 0, ''
    if not (10^18 * arg2 / arg1) - jumpPoint:
        if not jumpPoint:
            if minRate < minRate:
                revert with 0, 'a'
            if not 10^18 * arg2 / arg1:
                return 0, minRate
            if minRate * 10^18 * arg2 / arg1 / 10^18 * arg2 / arg1 != minRate:
                revert with 0, 'm'
            if not minRate * 10^18 * arg2 / arg1 / 10^18:
                return 0, minRate
            if spreadRate * minRate * 10^18 * arg2 / arg1 / 10^18 / minRate * 10^18 * arg2 / arg1 / 10^18 != spreadRate:
                revert with 0, 'm'
            return spreadRate * minRate * 10^18 * arg2 / arg1 / 10^18 / 10^18, minRate
        if basicSensitivity * jumpPoint / jumpPoint != basicSensitivity:
            revert with 0, 'm'
        if (basicSensitivity * jumpPoint / 10^18) + minRate < minRate:
            revert with 0, 'a'
        if not 10^18 * arg2 / arg1:
            return 0, (basicSensitivity * jumpPoint / 10^18) + minRate
        if (basicSensitivity * jumpPoint / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 * arg2 / arg1 != (basicSensitivity * jumpPoint / 10^18) + minRate:
            revert with 0, 'm'
        if not (basicSensitivity * jumpPoint / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18:
            return 0, (basicSensitivity * jumpPoint / 10^18) + minRate
        if spreadRate * (basicSensitivity * jumpPoint / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 / (basicSensitivity * jumpPoint / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 != spreadRate:
            revert with 0, 'm'
        return spreadRate * (basicSensitivity * jumpPoint / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 / 10^18, 
               (basicSensitivity * jumpPoint / 10^18) + minRate
    if (10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / (10^18 * arg2 / arg1) - jumpPoint != jumpSensitivity:
        revert with 0, 'm'
    if not jumpPoint:
        if minRate < minRate:
            revert with 0, 'a'
        if ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + minRate < minRate:
            revert with 0, 'a'
        if not 10^18 * arg2 / arg1:
            return 0, ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + minRate
        if ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 * arg2 / arg1 != ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + minRate:
            revert with 0, 'm'
        if not ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18:
            return 0, ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + minRate
        if spreadRate * ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 / ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 != spreadRate:
            revert with 0, 'm'
        return spreadRate * ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 / 10^18, 
               ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + minRate
    if basicSensitivity * jumpPoint / jumpPoint != basicSensitivity:
        revert with 0, 'm'
    if (basicSensitivity * jumpPoint / 10^18) + minRate < minRate:
        revert with 0, 'a'
    if (10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 < 0:
        revert with 0, 'a'
    if not 10^18 * arg2 / arg1:
        return 0, 
               ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + (basicSensitivity * jumpPoint / 10^18) + minRate
    if ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 10^18 * arg2 / arg1) + (basicSensitivity * jumpPoint / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 * arg2 / arg1 != ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + (basicSensitivity * jumpPoint / 10^18) + minRate:
        revert with 0, 'm'
    if not ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 10^18 * arg2 / arg1) + (basicSensitivity * jumpPoint / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18:
        return 0, 
               ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + (basicSensitivity * jumpPoint / 10^18) + minRate
    if spreadRate * ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 10^18 * arg2 / arg1) + (basicSensitivity * jumpPoint / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 / ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 10^18 * arg2 / arg1) + (basicSensitivity * jumpPoint / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 != spreadRate:
        revert with 0, 'm'
    return spreadRate * ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18 * 10^18 * arg2 / arg1) + (basicSensitivity * jumpPoint / 10^18 * 10^18 * arg2 / arg1) + (minRate * 10^18 * arg2 / arg1) / 10^18 / 10^18, 
           ((10^18 * arg2 / arg1 * jumpSensitivity) - (jumpPoint * jumpSensitivity) / 10^18) + (basicSensitivity * jumpPoint / 10^18) + minRate
}



}
