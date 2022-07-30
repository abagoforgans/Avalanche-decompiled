contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
address owner;
uint256 stor3;
uint256 stor4;
uint256 sub_3d6aa5e1;
uint256 totalDeposited;
address valueTokenAddress;
mapping of struct balanceOf;
uint256 rewardTokenLength;
mapping of struct rewardToken;
uint256 stor11;
mapping of address stor12;

function getRewardToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= rewardTokenLength:
        revert with 0, 'StakingFund: index is smaller than rewardTokenLength'
    return rewardToken[arg1].field_0, rewardToken[arg1].field_256
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_3d6aa5e1(?) payable {
    return sub_3d6aa5e1
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)].field_0
}

function rewardTokenLength() payable {
    return rewardTokenLength
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

function valueToken() payable {
    return valueTokenAddress
}

function totalDeposited() payable {
    return totalDeposited
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

function addRewardToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardToken[stor9].field_256 = arg1
    rewardToken[stor9].field_0 = arg2
    if rewardTokenLength == -1:
        revert with 0, 17
    rewardTokenLength++
}

function sub_b5f578fc(?) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= rewardTokenLength:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'StakingFund: index is smaller than rewardTokenLength'
    rewardToken[arg1].field_0 = arg2
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

function emergencyWithdraw() payable {
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if not balanceOf[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingFund: amount is strictly positive'
    balanceOf[msg.sender].field_256 = block.timestamp
    call valueTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOf[msg.sender].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    balanceOf[msg.sender].field_0 = 0
    if totalDeposited < balanceOf[msg.sender].field_0:
        revert with 0, 17
    totalDeposited -= balanceOf[msg.sender].field_0
    stor3 = 1
}

function setReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= rewardTokenLength:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'StakingFund: index is smaller than rewardTokenLength'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingFund: amount is strictly positive'
    call rewardToken[arg1].field_256.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    stor3 = 1
}

function collectRewards() payable {
    mem[64] = 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < rewardTokenLength:
        mem[0] = idx
        mem[32] = 10
        mem[mem[64] + 4] = this.address
        staticcall rewardToken[idx].field_256.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _17 = mem[_16]
        if mem[_16]:
            mem[0] = idx
            mem[32] = 10
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _17
            call rewardToken[idx].field_256.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _17
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _21 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_21] == bool(mem[_21])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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

function sub_128fced1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if rewardTokenLength > test266151307():
        revert with 0, 65
    if not rewardTokenLength:
        if balanceOf[address(arg1)].field_0:
            if block.timestamp < balanceOf[address(arg1)].field_256:
                revert with 0, 17
            if block.timestamp - balanceOf[address(arg1)].field_256:
                idx = 0
                while idx < rewardTokenLength:
                    mem[0] = idx
                    mem[32] = 10
                    if balanceOf[address(arg1)].field_0 and block.timestamp - balanceOf[address(arg1)].field_256 > -1 / balanceOf[address(arg1)].field_0:
                        revert with 0, 17
                    if (block.timestamp * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if not sub_3d6aa5e1:
                        revert with 0, 18
                    if idx >= rewardTokenLength:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(arg1)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                return Array(len=rewardTokenLength, data=mem[128 len 32 * rewardTokenLength])
        mem[(32 * rewardTokenLength) + 128] = 32
        mem[(32 * rewardTokenLength) + 160] = rewardTokenLength
        mem[(32 * rewardTokenLength) + 192 len 32 * rewardTokenLength] = mem[128 len 32 * rewardTokenLength]
    else:
        mem[128 len 32 * rewardTokenLength] = call.data[calldata.size len 32 * rewardTokenLength]
        if balanceOf[address(arg1)].field_0:
            if block.timestamp < balanceOf[address(arg1)].field_256:
                revert with 0, 17
            if block.timestamp - balanceOf[address(arg1)].field_256:
                idx = 0
                while idx < rewardTokenLength:
                    mem[0] = idx
                    mem[32] = 10
                    if balanceOf[address(arg1)].field_0 and block.timestamp - balanceOf[address(arg1)].field_256 > -1 / balanceOf[address(arg1)].field_0:
                        revert with 0, 17
                    if (block.timestamp * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if not sub_3d6aa5e1:
                        revert with 0, 18
                    if idx >= rewardTokenLength:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(arg1)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                return Array(len=rewardTokenLength, data=mem[128 len 32 * rewardTokenLength])
        mem[(32 * rewardTokenLength) + 128] = 32
        mem[(32 * rewardTokenLength) + 160] = rewardTokenLength
        mem[(32 * rewardTokenLength) + 192 len 32 * rewardTokenLength] = call.data[calldata.size len 32 * rewardTokenLength]
    return memory
      from (32 * rewardTokenLength) + 128
       len (96 * rewardTokenLength) + 64
}

function sub_74de7412(?) payable {
    if rewardTokenLength > test266151307():
        revert with 0, 65
    mem[96] = rewardTokenLength
    mem[64] = (32 * rewardTokenLength) + 128
    if not rewardTokenLength:
        idx = 0
        while idx < stor11:
            if rewardTokenLength > test266151307():
                revert with 0, 65
            _63 = mem[64]
            mem[mem[64]] = rewardTokenLength
            mem[64] = mem[64] + (32 * rewardTokenLength) + 32
            if rewardTokenLength:
                mem[_63 + 32 len 32 * rewardTokenLength] = call.data[calldata.size len 32 * rewardTokenLength]
            mem[0] = stor12[idx]
            mem[32] = 8
            if not balanceOf[stor12[idx]].field_0:
                s = 0
                while s < rewardTokenLength:
                    if s >= mem[_63]:
                        revert with 0, 50
                    if s >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * s) + 128] > !mem[(32 * s) + _63 + 32]:
                        revert with 0, 17
                    mem[(32 * s) + 128] = mem[(32 * s) + 128] + mem[(32 * s) + _63 + 32]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
            else:
                if block.timestamp < balanceOf[stor12[idx]].field_256:
                    revert with 0, 17
                if not block.timestamp - balanceOf[stor12[idx]].field_256:
                    s = 0
                    while s < rewardTokenLength:
                        if s >= mem[_63]:
                            revert with 0, 50
                        if s >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * s) + 128] > !mem[(32 * s) + _63 + 32]:
                            revert with 0, 17
                        mem[(32 * s) + 128] = mem[(32 * s) + 128] + mem[(32 * s) + _63 + 32]
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                else:
                    s = 0
                    while s < rewardTokenLength:
                        mem[0] = s
                        mem[32] = 10
                        if balanceOf[stor12[idx]].field_0 and block.timestamp - balanceOf[stor12[idx]].field_256 > -1 / balanceOf[stor12[idx]].field_0:
                            revert with 0, 17
                        if (block.timestamp * balanceOf[stor12[idx]].field_0) - (balanceOf[stor12[idx]].field_256 * balanceOf[stor12[idx]].field_0) and rewardToken[s].field_0 > -1 / (block.timestamp * balanceOf[stor12[idx]].field_0) - (balanceOf[stor12[idx]].field_256 * balanceOf[stor12[idx]].field_0):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if not sub_3d6aa5e1:
                            revert with 0, 18
                        if s >= mem[_63]:
                            revert with 0, 50
                        mem[(32 * s) + _63 + 32] = (block.timestamp * balanceOf[stor12[idx]].field_0 * rewardToken[s].field_0) - (balanceOf[stor12[idx]].field_256 * balanceOf[stor12[idx]].field_0 * rewardToken[s].field_0) / stor4 / sub_3d6aa5e1
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    s = 0
                    while s < rewardTokenLength:
                        if s >= mem[_63]:
                            revert with 0, 50
                        if s >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * s) + 128] > !mem[(32 * s) + _63 + 32]:
                            revert with 0, 17
                        mem[(32 * s) + 128] = mem[(32 * s) + 128] + mem[(32 * s) + _63 + 32]
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * rewardTokenLength] = call.data[calldata.size len 32 * rewardTokenLength]
        idx = 0
        while idx < stor11:
            if rewardTokenLength > test266151307():
                revert with 0, 65
            _65 = mem[64]
            mem[mem[64]] = rewardTokenLength
            mem[64] = mem[64] + (32 * rewardTokenLength) + 32
            if rewardTokenLength:
                mem[_65 + 32 len 32 * rewardTokenLength] = call.data[calldata.size len 32 * rewardTokenLength]
            mem[0] = stor12[idx]
            mem[32] = 8
            if not balanceOf[stor12[idx]].field_0:
                s = 0
                while s < rewardTokenLength:
                    if s >= mem[_65]:
                        revert with 0, 50
                    if s >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * s) + 128] > !mem[(32 * s) + _65 + 32]:
                        revert with 0, 17
                    mem[(32 * s) + 128] = mem[(32 * s) + 128] + mem[(32 * s) + _65 + 32]
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    continue 
            else:
                if block.timestamp < balanceOf[stor12[idx]].field_256:
                    revert with 0, 17
                if not block.timestamp - balanceOf[stor12[idx]].field_256:
                    s = 0
                    while s < rewardTokenLength:
                        if s >= mem[_65]:
                            revert with 0, 50
                        if s >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * s) + 128] > !mem[(32 * s) + _65 + 32]:
                            revert with 0, 17
                        mem[(32 * s) + 128] = mem[(32 * s) + 128] + mem[(32 * s) + _65 + 32]
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                else:
                    s = 0
                    while s < rewardTokenLength:
                        mem[0] = s
                        mem[32] = 10
                        if balanceOf[stor12[idx]].field_0 and block.timestamp - balanceOf[stor12[idx]].field_256 > -1 / balanceOf[stor12[idx]].field_0:
                            revert with 0, 17
                        if (block.timestamp * balanceOf[stor12[idx]].field_0) - (balanceOf[stor12[idx]].field_256 * balanceOf[stor12[idx]].field_0) and rewardToken[s].field_0 > -1 / (block.timestamp * balanceOf[stor12[idx]].field_0) - (balanceOf[stor12[idx]].field_256 * balanceOf[stor12[idx]].field_0):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if not sub_3d6aa5e1:
                            revert with 0, 18
                        if s >= mem[_65]:
                            revert with 0, 50
                        mem[(32 * s) + _65 + 32] = (block.timestamp * balanceOf[stor12[idx]].field_0 * rewardToken[s].field_0) - (balanceOf[stor12[idx]].field_256 * balanceOf[stor12[idx]].field_0 * rewardToken[s].field_0) / stor4 / sub_3d6aa5e1
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
                    s = 0
                    while s < rewardTokenLength:
                        if s >= mem[_65]:
                            revert with 0, 50
                        if s >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * s) + 128] > !mem[(32 * s) + _65 + 32]:
                            revert with 0, 17
                        mem[(32 * s) + 128] = mem[(32 * s) + 128] + mem[(32 * s) + _65 + 32]
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function sub_a038d2da(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if rewardTokenLength > test266151307():
        revert with 0, 65
    mem[96] = rewardTokenLength
    mem[64] = (32 * rewardTokenLength) + 128
    if not rewardTokenLength:
        mem[0] = address(arg1)
        mem[32] = 8
        if not balanceOf[address(arg1)].field_0:
            idx = 0
            while idx < rewardTokenLength:
                if idx >= mem[96]:
                    revert with 0, 50
                if valueTokenAddress != rewardToken[idx].field_256:
                    _114 = mem[(32 * idx) + 128]
                    if 0 > !mem[(32 * idx) + 128]:
                        revert with 0, 17
                    mem[0] = idx
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _142 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_142] < _114:
                        return 0
                else:
                    _122 = mem[(32 * idx) + 128]
                    if totalDeposited > !mem[(32 * idx) + 128]:
                        revert with 0, 17
                    mem[0] = idx
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _162 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_162] < totalDeposited + _122:
                        return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if block.timestamp < balanceOf[address(arg1)].field_256:
                revert with 0, 17
            if not block.timestamp - balanceOf[address(arg1)].field_256:
                idx = 0
                while idx < rewardTokenLength:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if valueTokenAddress != rewardToken[idx].field_256:
                        _116 = mem[(32 * idx) + 128]
                        if 0 > !mem[(32 * idx) + 128]:
                            revert with 0, 17
                        mem[0] = idx
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        staticcall rewardToken[idx].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _146 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_146] < _116:
                            return 0
                    else:
                        _123 = mem[(32 * idx) + 128]
                        if totalDeposited > !mem[(32 * idx) + 128]:
                            revert with 0, 17
                        mem[0] = idx
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        staticcall rewardToken[idx].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _163 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_163] < totalDeposited + _123:
                            return 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < rewardTokenLength:
                    mem[0] = idx
                    mem[32] = 10
                    if balanceOf[address(arg1)].field_0 and block.timestamp - balanceOf[address(arg1)].field_256 > -1 / balanceOf[address(arg1)].field_0:
                        revert with 0, 17
                    if (block.timestamp * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if not sub_3d6aa5e1:
                        revert with 0, 18
                    if idx >= rewardTokenLength:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(arg1)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < rewardTokenLength:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if valueTokenAddress != rewardToken[idx].field_256:
                        _234 = mem[(32 * idx) + 128]
                        if 0 > !mem[(32 * idx) + 128]:
                            revert with 0, 17
                        mem[0] = idx
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        staticcall rewardToken[idx].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _246 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_246] < _234:
                            return 0
                    else:
                        _238 = mem[(32 * idx) + 128]
                        if totalDeposited > !mem[(32 * idx) + 128]:
                            revert with 0, 17
                        mem[0] = idx
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        staticcall rewardToken[idx].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _254 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_254] < totalDeposited + _238:
                            return 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    else:
        mem[128 len 32 * rewardTokenLength] = call.data[calldata.size len 32 * rewardTokenLength]
        mem[0] = address(arg1)
        mem[32] = 8
        if not balanceOf[address(arg1)].field_0:
            idx = 0
            while idx < rewardTokenLength:
                if idx >= mem[96]:
                    revert with 0, 50
                if valueTokenAddress != rewardToken[idx].field_256:
                    _118 = mem[(32 * idx) + 128]
                    if 0 > !mem[(32 * idx) + 128]:
                        revert with 0, 17
                    mem[0] = idx
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _152 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_152] < _118:
                        return 0
                else:
                    _124 = mem[(32 * idx) + 128]
                    if totalDeposited > !mem[(32 * idx) + 128]:
                        revert with 0, 17
                    mem[0] = idx
                    mem[32] = 10
                    mem[mem[64] + 4] = this.address
                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _166 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_166] < totalDeposited + _124:
                        return 0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if block.timestamp < balanceOf[address(arg1)].field_256:
                revert with 0, 17
            if not block.timestamp - balanceOf[address(arg1)].field_256:
                idx = 0
                while idx < rewardTokenLength:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if valueTokenAddress != rewardToken[idx].field_256:
                        _120 = mem[(32 * idx) + 128]
                        if 0 > !mem[(32 * idx) + 128]:
                            revert with 0, 17
                        mem[0] = idx
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        staticcall rewardToken[idx].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _156 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_156] < _120:
                            return 0
                    else:
                        _125 = mem[(32 * idx) + 128]
                        if totalDeposited > !mem[(32 * idx) + 128]:
                            revert with 0, 17
                        mem[0] = idx
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        staticcall rewardToken[idx].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _167 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_167] < totalDeposited + _125:
                            return 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            else:
                idx = 0
                while idx < rewardTokenLength:
                    mem[0] = idx
                    mem[32] = 10
                    if balanceOf[address(arg1)].field_0 and block.timestamp - balanceOf[address(arg1)].field_256 > -1 / balanceOf[address(arg1)].field_0:
                        revert with 0, 17
                    if (block.timestamp * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(arg1)].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if not sub_3d6aa5e1:
                        revert with 0, 18
                    if idx >= rewardTokenLength:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(arg1)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(arg1)].field_256 * balanceOf[address(arg1)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < rewardTokenLength:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if valueTokenAddress != rewardToken[idx].field_256:
                        _236 = mem[(32 * idx) + 128]
                        if 0 > !mem[(32 * idx) + 128]:
                            revert with 0, 17
                        mem[0] = idx
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        staticcall rewardToken[idx].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _250 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_250] < _236:
                            return 0
                    else:
                        _239 = mem[(32 * idx) + 128]
                        if totalDeposited > !mem[(32 * idx) + 128]:
                            revert with 0, 17
                        mem[0] = idx
                        mem[32] = 10
                        mem[mem[64] + 4] = this.address
                        staticcall rewardToken[idx].field_256.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _255 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_255] < totalDeposited + _239:
                            return 0
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
    return 1
}

function harvest() payable {
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if rewardTokenLength > test266151307():
        revert with 0, 65
    mem[96] = rewardTokenLength
    mem[64] = (32 * rewardTokenLength) + 128
    if not rewardTokenLength:
        if not balanceOf[address(msg.sender)].field_0:
            mem[0] = msg.sender
            mem[32] = 8
            balanceOf[msg.sender].field_256 = block.timestamp
            if balanceOf[msg.sender].field_0:
                idx = 0
                while idx < rewardTokenLength:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * idx) + 128] > 0:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if valueTokenAddress != rewardToken[idx].field_256:
                            _246 = mem[(32 * idx) + 128]
                            if 0 > !mem[(32 * idx) + 128]:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = 10
                            mem[mem[64] + 4] = this.address
                            staticcall rewardToken[idx].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _276 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_276] < _246:
                                revert with 0, 'StakingFund: fund rewards first'
                            mem[0] = idx
                            mem[32] = 10
                            if idx >= mem[96]:
                                revert with 0, 50
                            _326 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _326
                            call rewardToken[idx].field_256.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _326
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _380 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_380] == bool(mem[_380])
                        else:
                            _254 = mem[(32 * idx) + 128]
                            if totalDeposited > !mem[(32 * idx) + 128]:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = 10
                            mem[mem[64] + 4] = this.address
                            staticcall rewardToken[idx].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _292 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_292] < totalDeposited + _254:
                                revert with 0, 'StakingFund: fund rewards first'
                            mem[0] = idx
                            mem[32] = 10
                            if idx >= mem[96]:
                                revert with 0, 50
                            _357 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _357
                            call rewardToken[idx].field_256.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _357
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _390 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_390] == bool(mem[_390])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if block.timestamp < balanceOf[address(msg.sender)].field_256:
                revert with 0, 17
            if not block.timestamp - balanceOf[address(msg.sender)].field_256:
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if balanceOf[msg.sender].field_0:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _248 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _280 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_280] < _248:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _332 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _332
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _332
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _382 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_382] == bool(mem[_382])
                            else:
                                _255 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _293 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_293] < totalDeposited + _255:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _361 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _361
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _361
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _391 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_391] == bool(mem[_391])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                idx = 0
                while idx < rewardTokenLength:
                    mem[0] = idx
                    mem[32] = 10
                    if balanceOf[address(msg.sender)].field_0 and block.timestamp - balanceOf[address(msg.sender)].field_256 > -1 / balanceOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if not sub_3d6aa5e1:
                        revert with 0, 18
                    if idx >= rewardTokenLength:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if balanceOf[msg.sender].field_0:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _450 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _462 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_462] < _450:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _482 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _482
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _482
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _502 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_502] == bool(mem[_502])
                            else:
                                _454 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _470 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_470] < totalDeposited + _454:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _495 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _495
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _495
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _506 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_506] == bool(mem[_506])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    else:
        mem[128 len 32 * rewardTokenLength] = call.data[calldata.size len 32 * rewardTokenLength]
        if not balanceOf[address(msg.sender)].field_0:
            mem[0] = msg.sender
            mem[32] = 8
            balanceOf[msg.sender].field_256 = block.timestamp
            if balanceOf[msg.sender].field_0:
                idx = 0
                while idx < rewardTokenLength:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * idx) + 128] > 0:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if valueTokenAddress != rewardToken[idx].field_256:
                            _250 = mem[(32 * idx) + 128]
                            if 0 > !mem[(32 * idx) + 128]:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = 10
                            mem[mem[64] + 4] = this.address
                            staticcall rewardToken[idx].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _284 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_284] < _250:
                                revert with 0, 'StakingFund: fund rewards first'
                            mem[0] = idx
                            mem[32] = 10
                            if idx >= mem[96]:
                                revert with 0, 50
                            _341 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _341
                            call rewardToken[idx].field_256.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _341
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _385 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_385] == bool(mem[_385])
                        else:
                            _257 = mem[(32 * idx) + 128]
                            if totalDeposited > !mem[(32 * idx) + 128]:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = 10
                            mem[mem[64] + 4] = this.address
                            staticcall rewardToken[idx].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _295 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_295] < totalDeposited + _257:
                                revert with 0, 'StakingFund: fund rewards first'
                            mem[0] = idx
                            mem[32] = 10
                            if idx >= mem[96]:
                                revert with 0, 50
                            _369 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _369
                            call rewardToken[idx].field_256.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _369
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _393 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_393] == bool(mem[_393])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
        else:
            if block.timestamp < balanceOf[address(msg.sender)].field_256:
                revert with 0, 17
            if not block.timestamp - balanceOf[address(msg.sender)].field_256:
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if balanceOf[msg.sender].field_0:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _252 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _288 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_288] < _252:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _347 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _347
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _347
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _387 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_387] == bool(mem[_387])
                            else:
                                _258 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _296 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_296] < totalDeposited + _258:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _373 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _373
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _373
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _394 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_394] == bool(mem[_394])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
            else:
                idx = 0
                while idx < rewardTokenLength:
                    mem[0] = idx
                    mem[32] = 10
                    if balanceOf[address(msg.sender)].field_0 and block.timestamp - balanceOf[address(msg.sender)].field_256 > -1 / balanceOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if not sub_3d6aa5e1:
                        revert with 0, 18
                    if idx >= rewardTokenLength:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if balanceOf[msg.sender].field_0:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _452 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _466 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_466] < _452:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _488 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _488
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _488
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _504 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_504] == bool(mem[_504])
                            else:
                                _455 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _471 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_471] < totalDeposited + _455:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _499 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _499
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _499
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _507 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_507] == bool(mem[_507])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
    stor3 = 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingFund: amount is strictly positive'
    if arg1 > balanceOf[msg.sender].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ManagementFund: insufficient funding'
    if rewardTokenLength > test266151307():
        revert with 0, 65
    mem[96] = rewardTokenLength
    mem[64] = (32 * rewardTokenLength) + 128
    if not rewardTokenLength:
        if not balanceOf[address(msg.sender)].field_0:
            mem[0] = msg.sender
            mem[32] = 8
            balanceOf[msg.sender].field_256 = block.timestamp
            if not balanceOf[msg.sender].field_0:
                call valueTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                idx = 0
                while idx < rewardTokenLength:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * idx) + 128] > 0:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if valueTokenAddress != rewardToken[idx].field_256:
                            _327 = mem[(32 * idx) + 128]
                            if 0 > !mem[(32 * idx) + 128]:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = 10
                            mem[mem[64] + 4] = this.address
                            staticcall rewardToken[idx].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _375 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_375] < _327:
                                revert with 0, 'StakingFund: fund rewards first'
                            mem[0] = idx
                            mem[32] = 10
                            if idx >= mem[96]:
                                revert with 0, 50
                            _431 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _431
                            call rewardToken[idx].field_256.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _431
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _485 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_485] == bool(mem[_485])
                        else:
                            _340 = mem[(32 * idx) + 128]
                            if totalDeposited > !mem[(32 * idx) + 128]:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = 10
                            mem[mem[64] + 4] = this.address
                            staticcall rewardToken[idx].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _391 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_391] < totalDeposited + _340:
                                revert with 0, 'StakingFund: fund rewards first'
                            mem[0] = idx
                            mem[32] = 10
                            if idx >= mem[96]:
                                revert with 0, 50
                            _462 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _462
                            call rewardToken[idx].field_256.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _462
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _495 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_495] == bool(mem[_495])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                call valueTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _309 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_309] == bool(mem[_309])
        else:
            if block.timestamp < balanceOf[address(msg.sender)].field_256:
                revert with 0, 17
            if not block.timestamp - balanceOf[address(msg.sender)].field_256:
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if not balanceOf[msg.sender].field_0:
                    call valueTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _329 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _379 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_379] < _329:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _437 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _437
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _437
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _487 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_487] == bool(mem[_487])
                            else:
                                _342 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _392 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_392] < totalDeposited + _342:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _466 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _466
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _466
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _496 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_496] == bool(mem[_496])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    call valueTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _311 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_311] == bool(mem[_311])
            else:
                idx = 0
                while idx < rewardTokenLength:
                    mem[0] = idx
                    mem[32] = 10
                    if balanceOf[address(msg.sender)].field_0 and block.timestamp - balanceOf[address(msg.sender)].field_256 > -1 / balanceOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if not sub_3d6aa5e1:
                        revert with 0, 18
                    if idx >= rewardTokenLength:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if not balanceOf[msg.sender].field_0:
                    call valueTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _563 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _577 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_577] < _563:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _597 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _597
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _597
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _617 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_617] == bool(mem[_617])
                            else:
                                _568 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _585 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_585] < totalDeposited + _568:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _610 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _610
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _610
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _621 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_621] == bool(mem[_621])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    call valueTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _555 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_555] == bool(mem[_555])
    else:
        mem[128 len 32 * rewardTokenLength] = call.data[calldata.size len 32 * rewardTokenLength]
        if not balanceOf[address(msg.sender)].field_0:
            mem[0] = msg.sender
            mem[32] = 8
            balanceOf[msg.sender].field_256 = block.timestamp
            if not balanceOf[msg.sender].field_0:
                call valueTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                idx = 0
                while idx < rewardTokenLength:
                    if idx >= mem[96]:
                        revert with 0, 50
                    if mem[(32 * idx) + 128] > 0:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if valueTokenAddress != rewardToken[idx].field_256:
                            _333 = mem[(32 * idx) + 128]
                            if 0 > !mem[(32 * idx) + 128]:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = 10
                            mem[mem[64] + 4] = this.address
                            staticcall rewardToken[idx].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _383 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_383] < _333:
                                revert with 0, 'StakingFund: fund rewards first'
                            mem[0] = idx
                            mem[32] = 10
                            if idx >= mem[96]:
                                revert with 0, 50
                            _446 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _446
                            call rewardToken[idx].field_256.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _446
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _490 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_490] == bool(mem[_490])
                        else:
                            _346 = mem[(32 * idx) + 128]
                            if totalDeposited > !mem[(32 * idx) + 128]:
                                revert with 0, 17
                            mem[0] = idx
                            mem[32] = 10
                            mem[mem[64] + 4] = this.address
                            staticcall rewardToken[idx].field_256.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _396 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_396] < totalDeposited + _346:
                                revert with 0, 'StakingFund: fund rewards first'
                            mem[0] = idx
                            mem[32] = 10
                            if idx >= mem[96]:
                                revert with 0, 50
                            _474 = mem[(32 * idx) + 128]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _474
                            call rewardToken[idx].field_256.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _474
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _498 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_498] == bool(mem[_498])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = arg1
                call valueTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _313 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_313] == bool(mem[_313])
        else:
            if block.timestamp < balanceOf[address(msg.sender)].field_256:
                revert with 0, 17
            if not block.timestamp - balanceOf[address(msg.sender)].field_256:
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if not balanceOf[msg.sender].field_0:
                    call valueTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _335 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _387 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_387] < _335:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _452 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _452
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _452
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _492 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_492] == bool(mem[_492])
                            else:
                                _348 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _397 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_397] < totalDeposited + _348:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _478 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _478
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _478
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _499 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_499] == bool(mem[_499])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    call valueTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _315 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_315] == bool(mem[_315])
            else:
                idx = 0
                while idx < rewardTokenLength:
                    mem[0] = idx
                    mem[32] = 10
                    if balanceOf[address(msg.sender)].field_0 and block.timestamp - balanceOf[address(msg.sender)].field_256 > -1 / balanceOf[address(msg.sender)].field_0:
                        revert with 0, 17
                    if (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0):
                        revert with 0, 17
                    if not stor4:
                        revert with 0, 18
                    if not sub_3d6aa5e1:
                        revert with 0, 18
                    if idx >= rewardTokenLength:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if not balanceOf[msg.sender].field_0:
                    call valueTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _565 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _581 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_581] < _565:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _603 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _603
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _603
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _619 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_619] == bool(mem[_619])
                            else:
                                _570 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _586 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_586] < totalDeposited + _570:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _614 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _614
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _614
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _622 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_622] == bool(mem[_622])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = arg1
                    call valueTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _557 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_557] == bool(mem[_557])
    if balanceOf[msg.sender].field_0 < arg1:
        revert with 0, 17
    balanceOf[msg.sender].field_0 -= arg1
    if totalDeposited < arg1:
        revert with 0, 17
    totalDeposited -= arg1
    stor3 = 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor3 = 2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'StakingFund: amount is strictly positive'
    if balanceOf[msg.sender].field_512:
        if rewardTokenLength > test266151307():
            revert with 0, 65
        mem[96] = rewardTokenLength
        mem[64] = (32 * rewardTokenLength) + 128
        if not rewardTokenLength:
            if not balanceOf[address(msg.sender)].field_0:
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if not balanceOf[msg.sender].field_0:
                    call valueTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _646 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _742 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_742] < _646:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _854 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _854
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _854
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _962 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_962] == bool(mem[_962])
                            else:
                                _671 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _774 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_774] < totalDeposited + _671:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _915 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _915
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _915
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _982 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_982] == bool(mem[_982])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = arg1
                    call valueTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _610 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_610] == bool(mem[_610])
            else:
                if block.timestamp < balanceOf[address(msg.sender)].field_256:
                    revert with 0, 17
                if not block.timestamp - balanceOf[address(msg.sender)].field_256:
                    mem[0] = msg.sender
                    mem[32] = 8
                    balanceOf[msg.sender].field_256 = block.timestamp
                    if not balanceOf[msg.sender].field_0:
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        idx = 0
                        while idx < rewardTokenLength:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if valueTokenAddress != rewardToken[idx].field_256:
                                    _648 = mem[(32 * idx) + 128]
                                    if 0 > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _746 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_746] < _648:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _860 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _860
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _860
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _964 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_964] == bool(mem[_964])
                                else:
                                    _673 = mem[(32 * idx) + 128]
                                    if totalDeposited > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _775 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_775] < totalDeposited + _673:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _919 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _919
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _919
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _983 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_983] == bool(mem[_983])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _612 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_612] == bool(mem[_612])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        mem[0] = idx
                        mem[32] = 10
                        if balanceOf[address(msg.sender)].field_0 and block.timestamp - balanceOf[address(msg.sender)].field_256 > -1 / balanceOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if not sub_3d6aa5e1:
                            revert with 0, 18
                        if idx >= rewardTokenLength:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 8
                    balanceOf[msg.sender].field_256 = block.timestamp
                    if not balanceOf[msg.sender].field_0:
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        idx = 0
                        while idx < rewardTokenLength:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if valueTokenAddress != rewardToken[idx].field_256:
                                    _1118 = mem[(32 * idx) + 128]
                                    if 0 > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1146 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1146] < _1118:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1186 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1186
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1186
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1226 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1226] == bool(mem[_1226])
                                else:
                                    _1127 = mem[(32 * idx) + 128]
                                    if totalDeposited > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1162 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1162] < totalDeposited + _1127:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1211 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1211
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1211
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1234 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1234] == bool(mem[_1234])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1102 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1102] == bool(mem[_1102])
        else:
            mem[128 len 32 * rewardTokenLength] = call.data[calldata.size len 32 * rewardTokenLength]
            if not balanceOf[address(msg.sender)].field_0:
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if not balanceOf[msg.sender].field_0:
                    call valueTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _652 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _750 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_750] < _652:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _869 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _869
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _869
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _967 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_967] == bool(mem[_967])
                            else:
                                _677 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _779 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_779] < totalDeposited + _677:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _927 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _927
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _927
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _985 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_985] == bool(mem[_985])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = arg1
                    call valueTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _614 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_614] == bool(mem[_614])
            else:
                if block.timestamp < balanceOf[address(msg.sender)].field_256:
                    revert with 0, 17
                if not block.timestamp - balanceOf[address(msg.sender)].field_256:
                    mem[0] = msg.sender
                    mem[32] = 8
                    balanceOf[msg.sender].field_256 = block.timestamp
                    if not balanceOf[msg.sender].field_0:
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        idx = 0
                        while idx < rewardTokenLength:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if valueTokenAddress != rewardToken[idx].field_256:
                                    _654 = mem[(32 * idx) + 128]
                                    if 0 > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _754 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_754] < _654:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _875 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _875
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _875
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _969 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_969] == bool(mem[_969])
                                else:
                                    _679 = mem[(32 * idx) + 128]
                                    if totalDeposited > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _780 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_780] < totalDeposited + _679:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _931 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _931
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _931
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _986 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_986] == bool(mem[_986])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _616 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_616] == bool(mem[_616])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        mem[0] = idx
                        mem[32] = 10
                        if balanceOf[address(msg.sender)].field_0 and block.timestamp - balanceOf[address(msg.sender)].field_256 > -1 / balanceOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if not sub_3d6aa5e1:
                            revert with 0, 18
                        if idx >= rewardTokenLength:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 8
                    balanceOf[msg.sender].field_256 = block.timestamp
                    if not balanceOf[msg.sender].field_0:
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        idx = 0
                        while idx < rewardTokenLength:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if valueTokenAddress != rewardToken[idx].field_256:
                                    _1120 = mem[(32 * idx) + 128]
                                    if 0 > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1150 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1150] < _1120:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1192 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1192
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1192
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1228 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1228] == bool(mem[_1228])
                                else:
                                    _1129 = mem[(32 * idx) + 128]
                                    if totalDeposited > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1163 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1163] < totalDeposited + _1129:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1215 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1215
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1215
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1235 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1235] == bool(mem[_1235])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1104 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1104] == bool(mem[_1104])
    else:
        if stor11 == -1:
            revert with 0, 17
        stor11++
        stor12[stor11] = msg.sender
        balanceOf[address(msg.sender)].field_512 = 1
        if rewardTokenLength > test266151307():
            revert with 0, 65
        mem[96] = rewardTokenLength
        mem[64] = (32 * rewardTokenLength) + 128
        if not rewardTokenLength:
            if not balanceOf[address(msg.sender)].field_0:
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if not balanceOf[msg.sender].field_0:
                    call valueTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _658 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _758 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_758] < _658:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _884 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _884
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _884
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _972 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_972] == bool(mem[_972])
                            else:
                                _683 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _784 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_784] < totalDeposited + _683:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _939 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _939
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _939
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _988 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_988] == bool(mem[_988])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = arg1
                    call valueTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _618 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_618] == bool(mem[_618])
            else:
                if block.timestamp < balanceOf[address(msg.sender)].field_256:
                    revert with 0, 17
                if not block.timestamp - balanceOf[address(msg.sender)].field_256:
                    mem[0] = msg.sender
                    mem[32] = 8
                    balanceOf[msg.sender].field_256 = block.timestamp
                    if not balanceOf[msg.sender].field_0:
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        idx = 0
                        while idx < rewardTokenLength:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if valueTokenAddress != rewardToken[idx].field_256:
                                    _660 = mem[(32 * idx) + 128]
                                    if 0 > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _762 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_762] < _660:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _890 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _890
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _890
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _974 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_974] == bool(mem[_974])
                                else:
                                    _685 = mem[(32 * idx) + 128]
                                    if totalDeposited > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _785 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_785] < totalDeposited + _685:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _943 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _943
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _943
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _989 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_989] == bool(mem[_989])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _620 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_620] == bool(mem[_620])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        mem[0] = idx
                        mem[32] = 10
                        if balanceOf[address(msg.sender)].field_0 and block.timestamp - balanceOf[address(msg.sender)].field_256 > -1 / balanceOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if not sub_3d6aa5e1:
                            revert with 0, 18
                        if idx >= rewardTokenLength:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 8
                    balanceOf[msg.sender].field_256 = block.timestamp
                    if not balanceOf[msg.sender].field_0:
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        idx = 0
                        while idx < rewardTokenLength:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if valueTokenAddress != rewardToken[idx].field_256:
                                    _1122 = mem[(32 * idx) + 128]
                                    if 0 > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1154 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1154] < _1122:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1198 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1198
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1198
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1230 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1230] == bool(mem[_1230])
                                else:
                                    _1131 = mem[(32 * idx) + 128]
                                    if totalDeposited > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1164 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1164] < totalDeposited + _1131:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1219 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1219
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1219
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1236 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1236] == bool(mem[_1236])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1106 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1106] == bool(mem[_1106])
        else:
            mem[128 len 32 * rewardTokenLength] = call.data[calldata.size len 32 * rewardTokenLength]
            if not balanceOf[address(msg.sender)].field_0:
                mem[0] = msg.sender
                mem[32] = 8
                balanceOf[msg.sender].field_256 = block.timestamp
                if not balanceOf[msg.sender].field_0:
                    call valueTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        if idx >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * idx) + 128] > 0:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if valueTokenAddress != rewardToken[idx].field_256:
                                _664 = mem[(32 * idx) + 128]
                                if 0 > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _766 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_766] < _664:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _899 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _899
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _899
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _977 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_977] == bool(mem[_977])
                            else:
                                _689 = mem[(32 * idx) + 128]
                                if totalDeposited > !mem[(32 * idx) + 128]:
                                    revert with 0, 17
                                mem[0] = idx
                                mem[32] = 10
                                mem[mem[64] + 4] = this.address
                                staticcall rewardToken[idx].field_256.0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _789 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                if mem[_789] < totalDeposited + _689:
                                    revert with 0, 'StakingFund: fund rewards first'
                                mem[0] = idx
                                mem[32] = 10
                                if idx >= mem[96]:
                                    revert with 0, 50
                                _951 = mem[(32 * idx) + 128]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _951
                                call rewardToken[idx].field_256.0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _951
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _991 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_991] == bool(mem[_991])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = this.address
                    mem[mem[64] + 68] = arg1
                    call valueTokenAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, this.address, arg1
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _622 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_622] == bool(mem[_622])
            else:
                if block.timestamp < balanceOf[address(msg.sender)].field_256:
                    revert with 0, 17
                if not block.timestamp - balanceOf[address(msg.sender)].field_256:
                    mem[0] = msg.sender
                    mem[32] = 8
                    balanceOf[msg.sender].field_256 = block.timestamp
                    if not balanceOf[msg.sender].field_0:
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        idx = 0
                        while idx < rewardTokenLength:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if valueTokenAddress != rewardToken[idx].field_256:
                                    _666 = mem[(32 * idx) + 128]
                                    if 0 > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _770 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_770] < _666:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _905 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _905
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _905
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _979 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_979] == bool(mem[_979])
                                else:
                                    _691 = mem[(32 * idx) + 128]
                                    if totalDeposited > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _790 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_790] < totalDeposited + _691:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _955 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _955
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _955
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _992 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_992] == bool(mem[_992])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _624 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_624] == bool(mem[_624])
                else:
                    idx = 0
                    while idx < rewardTokenLength:
                        mem[0] = idx
                        mem[32] = 10
                        if balanceOf[address(msg.sender)].field_0 and block.timestamp - balanceOf[address(msg.sender)].field_256 > -1 / balanceOf[address(msg.sender)].field_0:
                            revert with 0, 17
                        if (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0) and rewardToken[idx].field_0 > -1 / (block.timestamp * balanceOf[address(msg.sender)].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0):
                            revert with 0, 17
                        if not stor4:
                            revert with 0, 18
                        if not sub_3d6aa5e1:
                            revert with 0, 18
                        if idx >= rewardTokenLength:
                            revert with 0, 50
                        mem[(32 * idx) + 128] = (block.timestamp * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) - (balanceOf[address(msg.sender)].field_256 * balanceOf[address(msg.sender)].field_0 * rewardToken[idx].field_0) / stor4 / sub_3d6aa5e1
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 8
                    balanceOf[msg.sender].field_256 = block.timestamp
                    if not balanceOf[msg.sender].field_0:
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    else:
                        idx = 0
                        while idx < rewardTokenLength:
                            if idx >= mem[96]:
                                revert with 0, 50
                            if mem[(32 * idx) + 128] > 0:
                                if idx >= mem[96]:
                                    revert with 0, 50
                                if valueTokenAddress != rewardToken[idx].field_256:
                                    _1124 = mem[(32 * idx) + 128]
                                    if 0 > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1158 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1158] < _1124:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1204 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1204
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1204
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1232 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1232] == bool(mem[_1232])
                                else:
                                    _1133 = mem[(32 * idx) + 128]
                                    if totalDeposited > !mem[(32 * idx) + 128]:
                                        revert with 0, 17
                                    mem[0] = idx
                                    mem[32] = 10
                                    mem[mem[64] + 4] = this.address
                                    staticcall rewardToken[idx].field_256.0x70a08231 with:
                                            gas gas_remaining wei
                                           args this.address
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1165 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    if mem[_1165] < totalDeposited + _1133:
                                        revert with 0, 'StakingFund: fund rewards first'
                                    mem[0] = idx
                                    mem[32] = 10
                                    if idx >= mem[96]:
                                        revert with 0, 50
                                    _1223 = mem[(32 * idx) + 128]
                                    mem[mem[64] + 4] = msg.sender
                                    mem[mem[64] + 36] = _1223
                                    call rewardToken[idx].field_256.0xa9059cbb with:
                                         gas gas_remaining wei
                                        args msg.sender, _1223
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1237 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    require mem[_1237] == bool(mem[_1237])
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[mem[64] + 4] = msg.sender
                        mem[mem[64] + 36] = this.address
                        mem[mem[64] + 68] = arg1
                        call valueTokenAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, arg1
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1108 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_1108] == bool(mem[_1108])
    if balanceOf[msg.sender].field_0 > !arg1:
        revert with 0, 17
    balanceOf[msg.sender].field_0 += arg1
    if totalDeposited > !arg1:
        revert with 0, 17
    totalDeposited += arg1
    stor3 = 1
}



}
