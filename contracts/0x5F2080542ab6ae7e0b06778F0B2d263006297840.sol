contract main {




// =====================  Runtime code  =====================


#
#  - sub_8680ce4b(?)
#
const MAX_OPERATIONS = 10


uint256 ownersGeneration;
uint256 howManyOwnersDecide;
array of address owners;
array of uint256 allOperations;
address stor4;
uint256 stor4;
uint256 stor5;
mapping of uint256 ownersIndices;
mapping of uint256 allOperationsIndicies;
mapping of bool votesMaskByOperation;
mapping of uint256 votesCountByOperation;

function owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return address(owners[arg1])
}

function allOperationsCount() payable {
    return allOperations.length
}

function howManyOwnersDecide() payable {
    return howManyOwnersDecide
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(ownersIndices[address(arg1)])
}

function allOperations(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allOperations.length
    return allOperations[arg1]
}

function votesMaskByOperation(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return uint256(votesMaskByOperation[arg1])
}

function votesCountByOperation(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return votesCountByOperation[arg1]
}

function ownersGeneration() payable {
    return ownersGeneration
}

function ownersCount() payable {
    return owners.length
}

function ownersIndices(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return ownersIndices[arg1]
}

function allOperationsIndicies(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return allOperationsIndicies[arg1]
}

function _fallback() payable {
    revert
}

function cancelPending(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender == address(stor4):
        if 1 > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor4):
            uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
            stor5 = 1
        if ownersIndices[msg.sender] < 1:
            revert with 0, 17
        if not ownersIndices[msg.sender] - 1:
            if not bool(votesMaskByOperation[arg1]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cancelPending: operation not found for this user'
        else:
            if ownersIndices[msg.sender] - 1 > 255:
                revert with 0, 17
            if not uint256(votesMaskByOperation[arg1]) or not 1 << ownersIndices[msg.sender] - 1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'cancelPending: operation not found for this user'
        if not ownersIndices[msg.sender] - 1:
            bool(votesMaskByOperation[arg1]) = 0
        else:
            if ownersIndices[msg.sender] - 1 > 255:
                revert with 0, 17
            uint256(votesMaskByOperation[arg1]) = uint256(votesMaskByOperation[arg1]) and !(1 << ownersIndices[msg.sender] - 1)
        if votesCountByOperation[arg1] < 1:
            revert with 0, 17
        votesCountByOperation[arg1]--
        emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
        if not votesCountByOperation[arg1] - 1:
            if allOperations.length < 1:
                revert with 0, 17
            if allOperationsIndicies[arg1] < allOperations.length - 1:
                if allOperations.length < 1:
                    revert with 0, 17
                if allOperations.length - 1 >= allOperations.length:
                    revert with 0, 50
                if allOperationsIndicies[arg1] >= allOperations.length:
                    revert with 0, 50
                allOperations[stor7[arg1]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
            if not allOperations.length:
                revert with 0, 49
            allOperations[allOperations.length] = 0
            allOperations.length--
            uint256(votesMaskByOperation[arg1]) = 0
            votesCountByOperation[arg1] = 0
            allOperationsIndicies[arg1] = 0
            emit OperationCancelled(arg1, msg.sender);
        if not address(stor4):
            address(stor4) = 0
            stor5 = 0
    else:
        if not ownersIndices[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if ownersIndices[msg.sender] < 1:
            revert with 0, 17
        if not ownersIndices[msg.sender] - 1:
            if bool(votesMaskByOperation[call.data[0 len calldata.size]][stor0]):
                revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        else:
            if ownersIndices[msg.sender] - 1 > 255:
                revert with 0, 17
            if uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) and 1:
                revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        if not ownersIndices[msg.sender] - 1:
            uint8(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) = 1
        else:
            if ownersIndices[msg.sender] - 1 > 255:
                revert with 0, 17
            uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) = 1 << ownersIndices[msg.sender] - 1 or uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0])
        if 1 > !votesCountByOperation[call.data[0 len calldata.size]][stor0]:
            revert with 0, 17
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, 1, owners.length, msg.sender);
        if 1 == votesCountByOperation[call.data[0 len calldata.size]][stor0]:
            if allOperations.length < 1:
                revert with 0, 17
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                if allOperations.length < 1:
                    revert with 0, 17
                if allOperations.length - 1 >= allOperations.length:
                    revert with 0, 50
                if allOperationsIndicies[call.data[0 len calldata.size]][stor0] >= allOperations.length:
                    revert with 0, 50
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            if not allOperations.length:
                revert with 0, 49
            allOperations[allOperations.length] = 0
            allOperations.length--
            uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), 1, owners.length, msg.sender);
            if not address(stor4):
                uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
                stor5 = 1
            if ownersIndices[msg.sender] < 1:
                revert with 0, 17
            if not ownersIndices[msg.sender] - 1:
                if not bool(votesMaskByOperation[arg1]):
                    revert with 0, 'cancelPending: operation not found for this user'
            else:
                if ownersIndices[msg.sender] - 1 > 255:
                    revert with 0, 17
                if not uint256(votesMaskByOperation[arg1]) or not 1 << ownersIndices[msg.sender] - 1:
                    revert with 0, 'cancelPending: operation not found for this user'
            if not ownersIndices[msg.sender] - 1:
                bool(votesMaskByOperation[arg1]) = 0
            else:
                if ownersIndices[msg.sender] - 1 > 255:
                    revert with 0, 17
                uint256(votesMaskByOperation[arg1]) = uint256(votesMaskByOperation[arg1]) and !(1 << ownersIndices[msg.sender] - 1)
            if votesCountByOperation[arg1] < 1:
                revert with 0, 17
            votesCountByOperation[arg1]--
            emit OperationDownvoted(arg1, votesCountByOperation[arg1] - 1, owners.length, msg.sender);
            if not votesCountByOperation[arg1] - 1:
                if allOperations.length < 1:
                    revert with 0, 17
                if allOperationsIndicies[arg1] < allOperations.length - 1:
                    if allOperations.length < 1:
                        revert with 0, 17
                    if allOperations.length - 1 >= allOperations.length:
                        revert with 0, 50
                    if allOperationsIndicies[arg1] >= allOperations.length:
                        revert with 0, 50
                    allOperations[stor7[arg1]] = allOperations[allOperations.length]
                    allOperationsIndicies[stor3[allOperationsIndicies[arg1]]] = allOperationsIndicies[arg1]
                if not allOperations.length:
                    revert with 0, 49
                allOperations[allOperations.length] = 0
                allOperations.length--
                uint256(votesMaskByOperation[arg1]) = 0
                votesCountByOperation[arg1] = 0
                allOperationsIndicies[arg1] = 0
                emit OperationCancelled(arg1, msg.sender);
            if not address(stor4):
                address(stor4) = 0
                stor5 = 0
}

function transferOwnershipWithHowMany(address[] arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if msg.sender == address(stor4):
        if howManyOwnersDecide > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor4):
            uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
            stor5 = howManyOwnersDecide
        if not arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ctransferOwnershipWithHowMany: oners array is empty'
        if arg1.length > 256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ctransferOwnershipWithHowMany: oners count is greater then 256'
        if arg2 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
        if arg2 > arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
        idx = 0
        while idx < owners.length:
            mem[0] = address(owners[idx])
            mem[32] = 6
            ownersIndices[address(stor2[idx])] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if not address(cd[((32 * idx) + arg1 + 36)]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ctransferOwnershipWithHowMany: oners array contains zero'
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if ownersIndices[address(cd[((32 * idx) + arg1 + 36)])]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ctransferOwnershipWithHowMany: oners array contains duplicates'
            if 1 > !idx:
                revert with 0, 17
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 6
            ownersIndices[address(cd[((32 * idx) + arg1 + 36)])] = idx + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        t = 256
        while idx < owners.length:
            mem[t] = address(owners[s])
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[(32 * owners.length) + 256] = arg1.length
        idx = 0
        s = (32 * owners.length) + 288
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit OwnershipTransferred(Array(len=owners.length, data=mem[256 len (32 * owners.length) + (32 * arg1.length) + 32]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
        owners.length = arg1.length
        if not arg1.length:
            idx = 0
            while owners.length > idx:
                uint256(owners[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = arg1 + 36
            while arg1 + (32 * arg1.length) + 36 > idx:
                address(owners[s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while owners.length > idx:
                uint256(owners[idx]) = 0
                idx = idx + 1
                continue 
        howManyOwnersDecide = arg2
        allOperations.length = 0
        idx = 0
        while allOperations.length > idx:
            allOperations[idx] = 0
            idx = idx + 1
            continue 
        if ownersGeneration == -1:
            revert with 0, 17
        ownersGeneration++
        if not address(stor4):
            address(stor4) = 0
            stor5 = 0
    else:
        if not ownersIndices[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if ownersIndices[msg.sender] < 1:
            revert with 0, 17
        if not ownersIndices[msg.sender] - 1:
            if bool(votesMaskByOperation[call.data[0 len calldata.size]][stor0]):
                revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        else:
            if ownersIndices[msg.sender] - 1 > 255:
                revert with 0, 17
            if uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) and 1:
                revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        if not ownersIndices[msg.sender] - 1:
            uint8(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) = 1
        else:
            if ownersIndices[msg.sender] - 1 > 255:
                revert with 0, 17
            uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) = 1 << ownersIndices[msg.sender] - 1 or uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0])
        if 1 > !votesCountByOperation[call.data[0 len calldata.size]][stor0]:
            revert with 0, 17
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if howManyOwnersDecide == votesCountByOperation[call.data[0 len calldata.size]][stor0]:
            if allOperations.length < 1:
                revert with 0, 17
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                if allOperations.length < 1:
                    revert with 0, 17
                if allOperations.length - 1 >= allOperations.length:
                    revert with 0, 50
                if allOperationsIndicies[call.data[0 len calldata.size]][stor0] >= allOperations.length:
                    revert with 0, 50
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            if not allOperations.length:
                revert with 0, 49
            allOperations[allOperations.length] = 0
            allOperations.length--
            uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            if not address(stor4):
                uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
                stor5 = howManyOwnersDecide
            if not arg1.length:
                revert with 0, 'ctransferOwnershipWithHowMany: oners array is empty'
            if arg1.length > 256:
                revert with 0, 'ctransferOwnershipWithHowMany: oners count is greater then 256'
            if arg2 <= 0:
                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
            if arg2 > arg1.length:
                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
            idx = 0
            while idx < owners.length:
                mem[0] = address(owners[idx])
                mem[32] = 6
                ownersIndices[address(stor2[idx])] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'ctransferOwnershipWithHowMany: oners array contains zero'
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if ownersIndices[address(cd[((32 * idx) + arg1 + 36)])]:
                    revert with 0, 'ctransferOwnershipWithHowMany: oners array contains duplicates'
                if 1 > !idx:
                    revert with 0, 17
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 6
                ownersIndices[address(cd[((32 * idx) + arg1 + 36)])] = idx + 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            t = calldata.size + 320
            while idx < owners.length:
                mem[t] = address(owners[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[calldata.size + (32 * owners.length) + 320] = arg1.length
            idx = 0
            s = calldata.size + (32 * owners.length) + 352
            t = arg1 + 36
            while idx < arg1.length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit OwnershipTransferred(Array(len=owners.length, data=mem[calldata.size + 320 len (32 * owners.length) + (32 * arg1.length) + 32]), howManyOwnersDecide, (32 * owners.length) + 160, arg2);
            owners.length = arg1.length
            if not arg1.length:
                idx = 0
                while owners.length > idx:
                    uint256(owners[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = arg1 + 36
                while arg1 + (32 * arg1.length) + 36 > idx:
                    address(owners[s]) = address(cd[idx])
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while owners.length > idx:
                    uint256(owners[idx]) = 0
                    idx = idx + 1
                    continue 
            howManyOwnersDecide = arg2
            allOperations.length = 0
            idx = 0
            while allOperations.length > idx:
                allOperations[idx] = 0
                idx = idx + 1
                continue 
            if ownersGeneration == -1:
                revert with 0, 17
            ownersGeneration++
            if not address(stor4):
                address(stor4) = 0
                stor5 = 0
}

function transferOwnership(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    if msg.sender == address(stor4):
        if howManyOwnersDecide > stor5:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'checkHowManyOwners: nested owners modifier check require more owners'
        if not address(stor4):
            uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
            stor5 = howManyOwnersDecide
        if not arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ctransferOwnershipWithHowMany: oners array is empty'
        if arg1.length > 256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ctransferOwnershipWithHowMany: oners count is greater then 256'
        if arg1.length <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
        if arg1.length > arg1.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
        idx = 0
        while idx < owners.length:
            mem[0] = address(owners[idx])
            mem[32] = 6
            ownersIndices[address(stor2[idx])] = 0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if not address(cd[((32 * idx) + arg1 + 36)]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ctransferOwnershipWithHowMany: oners array contains zero'
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            if ownersIndices[address(cd[((32 * idx) + arg1 + 36)])]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'ctransferOwnershipWithHowMany: oners array contains duplicates'
            if 1 > !idx:
                revert with 0, 17
            if idx >= arg1.length:
                revert with 0, 50
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            mem[0] = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 6
            ownersIndices[address(cd[((32 * idx) + arg1 + 36)])] = idx + 1
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        t = 256
        while idx < owners.length:
            mem[t] = address(owners[s])
            idx = idx + 1
            s = s + 1
            t = t + 32
            continue 
        mem[(32 * owners.length) + 256] = arg1.length
        idx = 0
        s = (32 * owners.length) + 288
        t = arg1 + 36
        while idx < arg1.length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit OwnershipTransferred(Array(len=owners.length, data=mem[256 len (32 * owners.length) + (32 * arg1.length) + 32]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
        owners.length = arg1.length
        if not arg1.length:
            idx = 0
            while owners.length > idx:
                uint256(owners[idx]) = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = arg1 + 36
            while arg1 + (32 * arg1.length) + 36 > idx:
                address(owners[s]) = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
            while owners.length > idx:
                uint256(owners[idx]) = 0
                idx = idx + 1
                continue 
        howManyOwnersDecide = arg1.length
        allOperations.length = 0
        idx = 0
        while allOperations.length > idx:
            allOperations[idx] = 0
            idx = idx + 1
            continue 
        if ownersGeneration == -1:
            revert with 0, 17
        ownersGeneration++
        if not address(stor4):
            address(stor4) = 0
            stor5 = 0
    else:
        if not ownersIndices[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'checkHowManyOwners: msg.sender is not an owner'
        if ownersIndices[msg.sender] < 1:
            revert with 0, 17
        if not ownersIndices[msg.sender] - 1:
            if bool(votesMaskByOperation[call.data[0 len calldata.size]][stor0]):
                revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        else:
            if ownersIndices[msg.sender] - 1 > 255:
                revert with 0, 17
            if uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) and 1:
                revert with 0, 'checkHowManyOwners: owner already voted for the operation'
        if not ownersIndices[msg.sender] - 1:
            uint8(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) = 1
        else:
            if ownersIndices[msg.sender] - 1 > 255:
                revert with 0, 17
            uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) = 1 << ownersIndices[msg.sender] - 1 or uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0])
        if 1 > !votesCountByOperation[call.data[0 len calldata.size]][stor0]:
            revert with 0, 17
        votesCountByOperation[call.data[0 len calldata.size]][stor0]++
        if votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1 == 1:
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = allOperations.length
            allOperations.length++
            allOperations[allOperations.length] = sha3(call.data[0 len calldata.size], ownersGeneration)
            emit OperationCreated(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
        emit OperationUpvoted(sha3(call.data[0 len calldata.size], ownersGeneration), votesCountByOperation[call.data[0 len calldata.size]][stor0] + 1, howManyOwnersDecide, owners.length, msg.sender);
        if howManyOwnersDecide == votesCountByOperation[call.data[0 len calldata.size]][stor0]:
            if allOperations.length < 1:
                revert with 0, 17
            if allOperationsIndicies[call.data[0 len calldata.size]][stor0] < allOperations.length - 1:
                if allOperations.length < 1:
                    revert with 0, 17
                if allOperations.length - 1 >= allOperations.length:
                    revert with 0, 50
                if allOperationsIndicies[call.data[0 len calldata.size]][stor0] >= allOperations.length:
                    revert with 0, 50
                allOperations[stor7[call.data[0 len calldata.size]][stor0]] = allOperations[allOperations.length]
                allOperationsIndicies[stor3[allOperationsIndicies[call.data[0 len calldata.size]][stor0]]] = allOperationsIndicies[call.data[0 len calldata.size]][stor0]
            if not allOperations.length:
                revert with 0, 49
            allOperations[allOperations.length] = 0
            allOperations.length--
            uint256(votesMaskByOperation[call.data[0 len calldata.size]][stor0]) = 0
            votesCountByOperation[call.data[0 len calldata.size]][stor0] = 0
            allOperationsIndicies[call.data[0 len calldata.size]][stor0] = 0
            emit OperationPerformed(sha3(call.data[0 len calldata.size], ownersGeneration), howManyOwnersDecide, owners.length, msg.sender);
            if not address(stor4):
                uint256(stor4) = msg.sender or Mask(96, 160, uint256(stor4))
                stor5 = howManyOwnersDecide
            if not arg1.length:
                revert with 0, 'ctransferOwnershipWithHowMany: oners array is empty'
            if arg1.length > 256:
                revert with 0, 'ctransferOwnershipWithHowMany: oners count is greater then 256'
            if arg1.length <= 0:
                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide equal to 0'
            if arg1.length > arg1.length:
                revert with 0, 'transferOwnershipWithHowMany: newHowManyOwnersDecide exceeds the number of owners'
            idx = 0
            while idx < owners.length:
                mem[0] = address(owners[idx])
                mem[32] = 6
                ownersIndices[address(stor2[idx])] = 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if not address(cd[((32 * idx) + arg1 + 36)]):
                    revert with 0, 'ctransferOwnershipWithHowMany: oners array contains zero'
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                if ownersIndices[address(cd[((32 * idx) + arg1 + 36)])]:
                    revert with 0, 'ctransferOwnershipWithHowMany: oners array contains duplicates'
                if 1 > !idx:
                    revert with 0, 17
                if idx >= arg1.length:
                    revert with 0, 50
                require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
                mem[0] = address(cd[((32 * idx) + arg1 + 36)])
                mem[32] = 6
                ownersIndices[address(cd[((32 * idx) + arg1 + 36)])] = idx + 1
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            t = calldata.size + 320
            while idx < owners.length:
                mem[t] = address(owners[s])
                idx = idx + 1
                s = s + 1
                t = t + 32
                continue 
            mem[calldata.size + (32 * owners.length) + 320] = arg1.length
            idx = 0
            s = calldata.size + (32 * owners.length) + 352
            t = arg1 + 36
            while idx < arg1.length:
                require cd[t] == address(cd[t])
                mem[s] = address(cd[t])
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            emit OwnershipTransferred(Array(len=owners.length, data=mem[calldata.size + 320 len (32 * owners.length) + (32 * arg1.length) + 32]), howManyOwnersDecide, (32 * owners.length) + 160, arg1.length);
            owners.length = arg1.length
            if not arg1.length:
                idx = 0
                while owners.length > idx:
                    uint256(owners[idx]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = arg1 + 36
                while arg1 + (32 * arg1.length) + 36 > idx:
                    address(owners[s]) = address(cd[idx])
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
                while owners.length > idx:
                    uint256(owners[idx]) = 0
                    idx = idx + 1
                    continue 
            howManyOwnersDecide = arg1.length
            allOperations.length = 0
            idx = 0
            while allOperations.length > idx:
                allOperations[idx] = 0
                idx = idx + 1
                continue 
            if ownersGeneration == -1:
                revert with 0, 17
            ownersGeneration++
            if not address(stor4):
                address(stor4) = 0
                stor5 = 0
}



}
