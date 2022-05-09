contract main {




// =====================  Runtime code  =====================


array of address stor55562301234404549064732657743177008509969755924332665131323499316121459163045;
mapping of uint256 stor55562301234404549064732657743177008509969755924332665131323499316121459163046;
address storC8FC;
uint256 slotLength;

function slotLength() payable {
    return slotLength
}

function _fallback() payable {
    revert
}

function setSlotLength(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if storC8FC != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibDiamond: Must be contract owner'
    slotLength = arg1
}

function calcExecutorIndex(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        revert with 0, 18
    if not arg3:
        revert with 0, 18
    if 1 > !(arg1 / arg2):
        revert with 0, 17
    if (arg1 / arg2) + 1 and arg2 > -1 / (arg1 / arg2) + 1:
        revert with 0, 17
    if arg2 + (arg1 / arg2 * arg2) < arg1:
        revert with 0, 17
    if arg2 + (arg1 / arg2 * arg2) - arg1 < 1:
        revert with 0, 17
    return arg1 / arg2 % arg3, arg2 + (arg1 / arg2 * arg2) + -arg1 - 1
}

function getCurrentExecutorIndex() payable {
    if stor7AD7.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LibConcurrentCanExec.getCurrentExecutorIndex: 0 executors'
    if slotLength <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LibConcurrentCanExec.getCurrentExecutorIndex: 0 slotLength'
    if not slotLength:
        revert with 0, 18
    if not stor7AD7.length:
        revert with 0, 18
    if 1 > !(block.number / slotLength):
        revert with 0, 17
    if (block.number / slotLength) + 1 and slotLength > -1 / (block.number / slotLength) + 1:
        revert with 0, 17
    if slotLength + (block.number / slotLength * slotLength) < block.number:
        revert with 0, 17
    if slotLength + (block.number / slotLength * slotLength) - block.number < 1:
        revert with 0, 17
    return block.number / slotLength % stor7AD7.length, slotLength + (block.number / slotLength * slotLength) + -block.number - 1
}

function currentExecutor() payable {
    if stor7AD7.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LibConcurrentCanExec.getCurrentExecutorIndex: 0 executors'
    if slotLength <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LibConcurrentCanExec.getCurrentExecutorIndex: 0 slotLength'
    if not slotLength:
        revert with 0, 18
    if not stor7AD7.length:
        revert with 0, 18
    if 1 > !(block.number / slotLength):
        revert with 0, 17
    if (block.number / slotLength) + 1 and slotLength > -1 / (block.number / slotLength) + 1:
        revert with 0, 17
    if slotLength + (block.number / slotLength * slotLength) < block.number:
        revert with 0, 17
    if slotLength + (block.number / slotLength * slotLength) - block.number < 1:
        revert with 0, 17
    if block.number / slotLength % stor7AD7.length >= stor7AD7.length:
        revert with 0, 50
    return stor7AD7[block.number / storFEC9 % stor7AD7.length], 
           block.number / slotLength % stor7AD7.length,
           slotLength + (block.number / slotLength * slotLength) + -block.number - 1
}

function mySlotStatus(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= slotLength:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibConcurrentCanExec.mySlotStatus: invalid _buffer'
    if stor7AD7.length <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LibConcurrentCanExec.getCurrentExecutorIndex: 0 executors'
    if slotLength <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LibConcurrentCanExec.getCurrentExecutorIndex: 0 slotLength'
    if not slotLength:
        revert with 0, 18
    if not stor7AD7.length:
        revert with 0, 18
    if 1 > !(block.number / slotLength):
        revert with 0, 17
    if (block.number / slotLength) + 1 and slotLength > -1 / (block.number / slotLength) + 1:
        revert with 0, 17
    if slotLength + (block.number / slotLength * slotLength) < block.number:
        revert with 0, 17
    if slotLength + (block.number / slotLength * slotLength) - block.number < 1:
        revert with 0, 17
    if block.number / slotLength % stor7AD7.length >= stor7AD7.length:
        revert with 0, 50
    if stor7AD7[block.number / storFEC9 % stor7AD7.length] == msg.sender:
        if slotLength + (block.number / slotLength * slotLength) + -block.number - 1 <= arg1:
            return 1
    else:
        if slotLength + (block.number / slotLength * slotLength) + -block.number - 1:
            return 2
        if 1 > !block.number:
            revert with 0, 17
        if stor7AD7.length <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'LibConcurrentCanExec.getCurrentExecutorIndex: 0 executors'
        if slotLength <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'LibConcurrentCanExec.getCurrentExecutorIndex: 0 slotLength'
        if not slotLength:
            revert with 0, 18
        if not stor7AD7.length:
            revert with 0, 18
        if 1 > !(block.number + 1 / slotLength):
            revert with 0, 17
        if (block.number + 1 / slotLength) + 1 and slotLength > -1 / (block.number + 1 / slotLength) + 1:
            revert with 0, 17
        if slotLength + (block.number + 1 / slotLength * slotLength) < block.number + 1:
            revert with 0, 17
        if slotLength + (block.number + 1 / slotLength * slotLength) + -block.number - 1 < 1:
            revert with 0, 17
        if block.number + 1 / slotLength % stor7AD7.length >= stor7AD7.length:
            revert with 0, 50
        if stor7AD7[block.number + 1 / storFEC9 % stor7AD7.length] != msg.sender:
            return 2
    return 0
}

function concurrentCanExec(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7AD7[address(msg.sender)]:
        if arg1 >= slotLength:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibConcurrentCanExec.mySlotStatus: invalid _buffer'
        if stor7AD7.length <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'LibConcurrentCanExec.getCurrentExecutorIndex: 0 executors'
        if slotLength <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'LibConcurrentCanExec.getCurrentExecutorIndex: 0 slotLength'
        if not slotLength:
            revert with 0, 18
        if not stor7AD7.length:
            revert with 0, 18
        if 1 > !(block.number / slotLength):
            revert with 0, 17
        if (block.number / slotLength) + 1 and slotLength > -1 / (block.number / slotLength) + 1:
            revert with 0, 17
        if slotLength + (block.number / slotLength * slotLength) < block.number:
            revert with 0, 17
        if slotLength + (block.number / slotLength * slotLength) - block.number < 1:
            revert with 0, 17
        if block.number / slotLength % stor7AD7.length >= stor7AD7.length:
            revert with 0, 50
        if stor7AD7[block.number / storFEC9 % stor7AD7.length] == msg.sender:
            if slotLength + (block.number / slotLength * slotLength) + -block.number - 1 <= arg1:
                return 0
        else:
            if slotLength + (block.number / slotLength * slotLength) + -block.number - 1:
                return 0
            if 1 > !block.number:
                revert with 0, 17
            if stor7AD7.length <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'LibConcurrentCanExec.getCurrentExecutorIndex: 0 executors'
            if slotLength <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'LibConcurrentCanExec.getCurrentExecutorIndex: 0 slotLength'
            if not slotLength:
                revert with 0, 18
            if not stor7AD7.length:
                revert with 0, 18
            if 1 > !(block.number + 1 / slotLength):
                revert with 0, 17
            if (block.number + 1 / slotLength) + 1 and slotLength > -1 / (block.number + 1 / slotLength) + 1:
                revert with 0, 17
            if slotLength + (block.number + 1 / slotLength * slotLength) < block.number + 1:
                revert with 0, 17
            if slotLength + (block.number + 1 / slotLength * slotLength) + -block.number - 1 < 1:
                revert with 0, 17
            if block.number + 1 / slotLength % stor7AD7.length >= stor7AD7.length:
                revert with 0, 50
            if stor7AD7[block.number + 1 / storFEC9 % stor7AD7.length] != msg.sender:
                return 0
    else:
        if stor7AD7.length != 1:
            if arg1 >= slotLength:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LibConcurrentCanExec.mySlotStatus: invalid _buffer'
            if stor7AD7.length <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'LibConcurrentCanExec.getCurrentExecutorIndex: 0 executors'
            if slotLength <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'LibConcurrentCanExec.getCurrentExecutorIndex: 0 slotLength'
            if not slotLength:
                revert with 0, 18
            if not stor7AD7.length:
                revert with 0, 18
            if 1 > !(block.number / slotLength):
                revert with 0, 17
            if (block.number / slotLength) + 1 and slotLength > -1 / (block.number / slotLength) + 1:
                revert with 0, 17
            if slotLength + (block.number / slotLength * slotLength) < block.number:
                revert with 0, 17
            if slotLength + (block.number / slotLength * slotLength) - block.number < 1:
                revert with 0, 17
            if block.number / slotLength % stor7AD7.length >= stor7AD7.length:
                revert with 0, 50
            if stor7AD7[block.number / storFEC9 % stor7AD7.length] == msg.sender:
                if slotLength + (block.number / slotLength * slotLength) + -block.number - 1 <= arg1:
                    return 0
            else:
                if slotLength + (block.number / slotLength * slotLength) + -block.number - 1:
                    return 0
                if 1 > !block.number:
                    revert with 0, 17
                if stor7AD7.length <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'LibConcurrentCanExec.getCurrentExecutorIndex: 0 executors'
                if slotLength <= 0:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                'LibConcurrentCanExec.getCurrentExecutorIndex: 0 slotLength'
                if not slotLength:
                    revert with 0, 18
                if not stor7AD7.length:
                    revert with 0, 18
                if 1 > !(block.number + 1 / slotLength):
                    revert with 0, 17
                if (block.number + 1 / slotLength) + 1 and slotLength > -1 / (block.number + 1 / slotLength) + 1:
                    revert with 0, 17
                if slotLength + (block.number + 1 / slotLength * slotLength) < block.number + 1:
                    revert with 0, 17
                if slotLength + (block.number + 1 / slotLength * slotLength) + -block.number - 1 < 1:
                    revert with 0, 17
                if block.number + 1 / slotLength % stor7AD7.length >= stor7AD7.length:
                    revert with 0, 50
                if stor7AD7[block.number + 1 / storFEC9 % stor7AD7.length] != msg.sender:
                    return 0
    return 1
}



}
