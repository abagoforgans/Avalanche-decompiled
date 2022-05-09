contract main {




// =====================  Runtime code  =====================


#
#  - unlockFNFT(uint256 arg1, address arg2)
#
const sub_b3f9ff19(?) = 0x3f8f47e800000000000000000000000000000000000000000000000000000000

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
address owner;
address stor4;
uint256 numLocks;
mapping of uint256 fnftIdToLockId;
mapping of struct locks;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function fnftIdToLockId(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return fnftIdToLockId[arg1]
}

function fnftIdToLock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if locks[stor6[arg1]].field_160 > 3:
        revert with 0, 33
    if locks[stor6[arg1]].field_160 >= 4:
        revert with 0, 33
    return locks[stor6[arg1]].field_0, 
           locks[stor6[arg1]].field_0,
           locks[stor6[arg1]].field_256,
           locks[stor6[arg1]].field_512,
           locks[stor6[arg1]].field_768,
           locks[stor6[arg1]].field_1024,
           bool(locks[stor6[arg1]].field_1280),
           locks[stor6[arg1]].field_1536,
           locks[stor6[arg1]].field_1792,
           bool(locks[stor6[arg1]].field_2048)
}

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function numLocks() payable {
    return numLocks
}

function getLock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if locks[arg1].field_160 > 3:
        revert with 0, 33
    if locks[arg1].field_160 >= 4:
        revert with 0, 33
    return locks[arg1].field_0, 
           locks[arg1].field_0,
           locks[arg1].field_256,
           locks[arg1].field_512,
           locks[arg1].field_768,
           locks[arg1].field_1024,
           bool(locks[arg1].field_1280),
           locks[arg1].field_1536,
           locks[arg1].field_1792,
           bool(locks[arg1].field_2048)
}

function locks(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if locks[arg1].field_160 >= 4:
        revert with 0, 33
    return locks[arg1].field_0, 
           locks[arg1].field_0,
           locks[arg1].field_256,
           locks[arg1].field_512,
           locks[arg1].field_768,
           locks[arg1].field_1024,
           bool(locks[arg1].field_1280),
           locks[arg1].field_1536,
           locks[arg1].field_1792,
           bool(locks[arg1].field_2048)
}

function lockTypes(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if locks[stor6[arg1]].field_160 > 3:
        revert with 0, 33
    if locks[stor6[arg1]].field_160 >= 4:
        revert with 0, 33
    return locks[stor6[arg1]].field_160
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setAddressRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function pointFNFTToLock(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor4)
    staticcall stor4.getLockManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(stor4)
        staticcall stor4.0xf9f5e1dd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(stor4)
            staticcall stor4.0x54f2f7af with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(stor4)
                staticcall stor4.0xf97e7d74 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    require ext_code.size(stor4)
                    staticcall stor4.getRevestToken() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        revert with 0, 'E016'
    fnftIdToLockId[arg1] = arg2
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_dd6aa4cf(?) payable {
    require calldata.size - 4 >= 288
    require calldata.size - 36 >= 256
    require arg2 == address(arg2)
    require arg4 < 4
    require calldata.size - 132 >= 160
    require arg5 == address(arg5)
    require arg6 == address(arg6)
    require arg7 == address(arg7)
    require arg9 == bool(arg9)
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor4)
    staticcall stor4.getLockManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(stor4)
        staticcall stor4.0xf9f5e1dd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(stor4)
            staticcall stor4.0x54f2f7af with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20] != msg.sender:
                require ext_code.size(stor4)
                staticcall stor4.0xf97e7d74 with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if ext_call.return_data[12 len 20] != msg.sender:
                    require ext_code.size(stor4)
                    staticcall stor4.getRevestToken() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != msg.sender:
                        revert with 0, 'E016'
    if arg4 > 3:
        revert with 0, 33
    if not arg4:
        revert with 0, 'E058'
    if arg4 > 3:
        revert with 0, 33
    locks[stor5].field_160 = Mask(96, 0, arg4)
    locks[stor5].field_1792 = block.timestamp
    if arg4 > 3:
        revert with 0, 33
    if arg4 == 1:
        if arg3 <= block.timestamp:
            revert with 0, 'E002'
        locks[stor5].field_1536 = arg3
    else:
        if arg4 > 3:
            revert with 0, 33
        if arg4 != 2:
            if arg4 > 3:
                revert with 0, 33
            if arg4 != 3:
                revert with 0, 'Invalid type'
            if not address(arg2):
                revert with 0, 'E004'
            locks[stor5].field_0 = address(arg2)
        else:
            if arg8 <= 0:
                revert with 0, 'E003'
            if not address(arg6):
                revert with 0, 'E004'
            if not address(arg5):
                revert with 0, 'E004'
            require ext_code.size(address(arg7))
            staticcall address(arg7).getPairHasOracle(address arg1, address arg2) with:
                    gas gas_remaining wei
                   args address(arg5), address(arg6)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                require ext_code.size(address(arg7))
                staticcall address(arg7).oracleNeedsInitialization(address arg1, address arg2) with:
                        gas gas_remaining wei
                       args address(arg5), address(arg6)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if ext_call.return_data[0]:
                    require ext_code.size(address(arg7))
                    call address(arg7).initializeOracle(address arg1, address arg2) with:
                         gas gas_remaining wei
                        args address(arg5), address(arg6)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'E049'
            locks[stor5].field_256 = address(arg5)
            locks[stor5].field_512 = address(arg6)
            locks[stor5].field_768 = address(arg7)
            locks[stor5].field_1024 = arg8
            locks[stor5].field_1280 = uint8(bool(arg9))
    fnftIdToLockId[arg1] = numLocks
    if numLocks > -2:
        revert with 0, 17
    numLocks++
    if numLocks < 1:
        revert with 0, 17
    return (numLocks - 1)
}

function getLockMaturity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if locks[stor6[arg1]].field_160 > 3:
        revert with 0, 33
    if locks[stor6[arg1]].field_160 > 3:
        revert with 0, 33
    if locks[stor6[arg1]].field_160 == 1:
        if locks[stor6[arg1]].field_2048:
            return bool(locks[stor6[arg1]].field_2048)
        return (block.timestamp > locks[stor6[arg1]].field_1536)
    if locks[stor6[arg1]].field_160 > 3:
        revert with 0, 33
    if locks[stor6[arg1]].field_160 == 2:
        if locks[stor6[arg1]].field_2048:
            return bool(locks[stor6[arg1]].field_2048)
        if locks[stor6[arg1]].field_160 > 3:
            revert with 0, 33
        require ext_code.size(locks[stor6[arg1]].field_768)
        staticcall locks[stor6[arg1]].field_768.getValueOfAsset(address arg1, address arg2, bool arg3) with:
                gas gas_remaining wei
               args locks[stor6[arg1]].field_256, locks[stor6[arg1]].field_512, bool(locks[stor6[arg1]].field_1280)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not locks[stor6[arg1]].field_1280:
            return (ext_call.return_data[0] < locks[stor6[arg1]].field_1024)
        return ext_call.return_data[0] >= locks[stor6[arg1]].field_1024
    if locks[stor6[arg1]].field_160 > 3:
        revert with 0, 33
    if locks[stor6[arg1]].field_160 != 3:
        revert with 0, 'E050'
    if locks[stor6[arg1]].field_2048:
        return bool(locks[stor6[arg1]].field_2048)
    mem[516 len 64] = supportsInterface(bytes4 arg1), 0x1ffc9a70000000000000000000000000000000000000000, 0, mem[516 len 28]
    mem[552] = 0
    staticcall locks[stor6[arg1]].field_0.mem[516 len 4] with:
            gas 30000 wei
           args mem[520]
    if not return_data.size:
        if locks[stor6[arg1]].field_0 < 32:
            return 0
        if not ext_call.success:
            return bool(ext_call.success)
        require locks[stor6[arg1]].field_0 >= 32
        require locks[stor6[arg1]].field_160 == bool(locks[stor6[arg1]].field_160)
        if not locks[stor6[arg1]].field_160:
            return bool(locks[stor6[arg1]].field_160)
        mem[584 len 64] = 0, 0xffffffff00000000000000000000000000000000000000000000000000000000, mem[584 len 28]
        mem[620] = 0
        staticcall locks[stor6[arg1]].field_0.mem[584 len 4] with:
                gas 30000 wei
               args mem[588]
        if not return_data.size:
            if locks[stor6[arg1]].field_0 >= 32:
                if ext_call.success:
                    require locks[stor6[arg1]].field_0 >= 32
                    require locks[stor6[arg1]].field_160 == bool(locks[stor6[arg1]].field_160)
                    if locks[stor6[arg1]].field_160:
                        return not bool(locks[stor6[arg1]].field_160)
            mem[652 len 64] = 0, 0x3f8f47e800000000000000000000000000000000000000000000000000000000, mem[652 len 28]
            mem[688] = 0
            staticcall locks[stor6[arg1]].field_0.mem[652 len 4] with:
                    gas 30000 wei
                   args mem[656]
            if not return_data.size:
                if locks[stor6[arg1]].field_0 < 32:
                    return 0
                if not ext_call.success:
                    return bool(ext_call.success)
                require locks[stor6[arg1]].field_0 >= 32
                require locks[stor6[arg1]].field_160 == bool(locks[stor6[arg1]].field_160)
                if not locks[stor6[arg1]].field_160:
                    return bool(locks[stor6[arg1]].field_160)
            else:
                mem[684 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if return_data.size < 32:
                    return 0
                if not ext_call.success:
                    return bool(ext_call.success)
                require return_data.size >= 32
                require mem[684 len 4], 0 == bool(mem[684 len 4], 0)
                if not mem[684 len 4], 0:
                    mem[ceil32(return_data.size) + 653] = bool(mem[684 len 4], 0)
                    return memory
                      from ceil32(return_data.size) + 653
                       len 32
        else:
            mem[616 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if return_data.size >= 32:
                if ext_call.success:
                    require return_data.size >= 32
                    require mem[616 len 4], 0 == bool(mem[616 len 4], 0)
                    if mem[616 len 4], 0:
                        mem[ceil32(return_data.size) + 585] = not bool(mem[616 len 4], 0)
                        return memory
                          from ceil32(return_data.size) + 585
                           len 32
            mem[ceil32(return_data.size) + 653 len 64] = 0, 0x3f8f47e800000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 653 len 28]
            mem[ceil32(return_data.size) + 689] = 0
            staticcall locks[stor6[arg1]].field_0.mem[ceil32(return_data.size) + 653 len 4] with:
                    gas 30000 wei
                   args mem[ceil32(return_data.size) + 657]
            if not return_data.size:
                if locks[stor6[arg1]].field_0 < 32:
                    return 0
                if not ext_call.success:
                    return bool(ext_call.success)
                require locks[stor6[arg1]].field_0 >= 32
                require locks[stor6[arg1]].field_160 == bool(locks[stor6[arg1]].field_160)
                if not locks[stor6[arg1]].field_160:
                    return bool(locks[stor6[arg1]].field_160)
            else:
                mem[ceil32(return_data.size) + 685 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if return_data.size < 32:
                    return 0
                if not ext_call.success:
                    return bool(ext_call.success)
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 685 len 4], 0 == bool(mem[ceil32(return_data.size) + 685 len 4], 0)
                if not mem[ceil32(return_data.size) + 685 len 4], 0:
                    mem[(2 * ceil32(return_data.size)) + 654] = bool(mem[ceil32(return_data.size) + 685 len 4], 0)
                    return memory
                      from (2 * ceil32(return_data.size)) + 654
                       len 32
    else:
        mem[548 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if return_data.size < 32:
            return 0
        if not ext_call.success:
            return bool(ext_call.success)
        require return_data.size >= 32
        require mem[548 len 4], 0 == bool(mem[548 len 4], 0)
        if not mem[548 len 4], 0:
            mem[ceil32(return_data.size) + 517] = bool(mem[548 len 4], 0)
            return memory
              from ceil32(return_data.size) + 517
               len 32
        mem[ceil32(return_data.size) + 585 len 64] = 0, 0xffffffff00000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 585 len 28]
        mem[ceil32(return_data.size) + 621] = 0
        staticcall locks[stor6[arg1]].field_0.mem[ceil32(return_data.size) + 585 len 4] with:
                gas 30000 wei
               args mem[ceil32(return_data.size) + 589]
        if not return_data.size:
            if locks[stor6[arg1]].field_0 >= 32:
                if ext_call.success:
                    require locks[stor6[arg1]].field_0 >= 32
                    require locks[stor6[arg1]].field_160 == bool(locks[stor6[arg1]].field_160)
                    if locks[stor6[arg1]].field_160:
                        return not bool(locks[stor6[arg1]].field_160)
            mem[ceil32(return_data.size) + 653 len 64] = 0, 0x3f8f47e800000000000000000000000000000000000000000000000000000000, mem[ceil32(return_data.size) + 653 len 28]
            mem[ceil32(return_data.size) + 689] = 0
            staticcall locks[stor6[arg1]].field_0.mem[ceil32(return_data.size) + 653 len 4] with:
                    gas 30000 wei
                   args mem[ceil32(return_data.size) + 657]
            if not return_data.size:
                if locks[stor6[arg1]].field_0 < 32:
                    return 0
                if not ext_call.success:
                    return bool(ext_call.success)
                require locks[stor6[arg1]].field_0 >= 32
                require locks[stor6[arg1]].field_160 == bool(locks[stor6[arg1]].field_160)
                if not locks[stor6[arg1]].field_160:
                    return bool(locks[stor6[arg1]].field_160)
            else:
                mem[ceil32(return_data.size) + 685 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if return_data.size < 32:
                    return 0
                if not ext_call.success:
                    return bool(ext_call.success)
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 685 len 4], 0 == bool(mem[ceil32(return_data.size) + 685 len 4], 0)
                if not mem[ceil32(return_data.size) + 685 len 4], 0:
                    mem[(2 * ceil32(return_data.size)) + 654] = bool(mem[ceil32(return_data.size) + 685 len 4], 0)
                    return memory
                      from (2 * ceil32(return_data.size)) + 654
                       len 32
        else:
            mem[ceil32(return_data.size) + 617 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if return_data.size >= 32:
                if ext_call.success:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 617 len 4], 0 == bool(mem[ceil32(return_data.size) + 617 len 4], 0)
                    if mem[ceil32(return_data.size) + 617 len 4], 0:
                        mem[(2 * ceil32(return_data.size)) + 586] = not bool(mem[ceil32(return_data.size) + 617 len 4], 0)
                        return memory
                          from (2 * ceil32(return_data.size)) + 586
                           len 32
            mem[(2 * ceil32(return_data.size)) + 654 len 64] = 0, 0x3f8f47e800000000000000000000000000000000000000000000000000000000, mem[(2 * ceil32(return_data.size)) + 654 len 28]
            mem[(2 * ceil32(return_data.size)) + 690] = 0
            staticcall locks[stor6[arg1]].field_0.mem[(2 * ceil32(return_data.size)) + 654 len 4] with:
                    gas 30000 wei
                   args mem[(2 * ceil32(return_data.size)) + 658]
            if not return_data.size:
                if locks[stor6[arg1]].field_0 < 32:
                    return 0
                if not ext_call.success:
                    return bool(ext_call.success)
                require locks[stor6[arg1]].field_0 >= 32
                require locks[stor6[arg1]].field_160 == bool(locks[stor6[arg1]].field_160)
                if not locks[stor6[arg1]].field_160:
                    return bool(locks[stor6[arg1]].field_160)
            else:
                mem[(2 * ceil32(return_data.size)) + 686 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if return_data.size < 32:
                    return 0
                if not ext_call.success:
                    return bool(ext_call.success)
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 686 len 4], 0 == bool(mem[(2 * ceil32(return_data.size)) + 686 len 4], 0)
                if not mem[(2 * ceil32(return_data.size)) + 686 len 4], 0:
                    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655] = bool(mem[(2 * ceil32(return_data.size)) + 686 len 4], 0)
                    return memory
                      from (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 655
                       len 32
    require ext_code.size(locks[stor6[arg1]].field_0)
    staticcall locks[stor6[arg1]].field_0.isUnlockable(uint256 arg1, uint256 arg2) with:
            gas gas_remaining wei
           args arg1, fnftIdToLockId[arg1]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}



}
