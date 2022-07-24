contract main {




// =====================  Runtime code  =====================


#
#  - sub_0780d142(?)
#  - inCaseTokensGetStuck(address arg1, address arg2, uint256 arg3)
#
const INTERFACE_ROLE = 0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f

const DEFAULT_ADMIN_ROLE = 0

const WITHDRAW_ROLE = 0x5d8e12c39142ff96d79d04d15d1ba1269e4fe57bb9d26f43523628b34ba108ec

const GOVERNANCE_ROLE = 0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce


mapping of struct roleAdmin;
array of struct roleMember;
address owner;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint32 stor3;
uint128 stor3; offset 168
uint128 stor3; offset 160
address vaultAddress;
uint256 stor3;
array of struct strategieList;
mapping of uint8 stor5;
mapping of uint256 strategieListNumber;
array of address strategieListPrioritySort;
array of struct rewardToken;
mapping of uint8 stor9;
mapping of uint256 rewardTokenNumber;
mapping of uint256 strategieListEarned;
uint8 afterBeta;

function afterBeta() payable {
    return bool(afterBeta)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function rewardTokenNumber(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardTokenNumber[arg1]
}

function rewardToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardToken.length
    return rewardToken[arg1].field_0
}

function strategieListPrioritySort(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < strategieListPrioritySort.length
    return address(strategieListPrioritySort[arg1])
}

function paused() payable {
    return bool(uint8(stor3.field_160))
}

function strategieList(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < strategieList.length
    return strategieList[arg1].field_0
}

function rewardTokenExist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor9[arg1])
}

function rewardTokenNumbers(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return rewardTokenNumber[address(arg1)]
}

function strategieListEarned(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return strategieListEarned[arg1][arg2]
}

function vaults() payable {
    return vaultAddress
}

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function strategieListNumber(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return strategieListNumber[arg1]
}

function strategieListExist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[arg1])
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function locked() payable {
    return bool(uint8(stor3.field_168))
}

function vault() payable {
    return vaultAddress
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

function setLocked(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Caller is not admin'
    Mask(88, 0, stor3.field_168) = Mask(88, 0, arg1)
}

function setAfterBeta() payable {
    if not roleAdmin[0x5d8e12c39142ff96d79d04d15d1ba1269e4fe57bb9d26f43523628b34ba108ec][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'must have withdraw role to withdraw'
    afterBeta = 1
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
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

function addRewardToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    if stor9[address(arg1)]:
        revert with 0, 'this rewardToken have added'
    if 10 <= rewardToken.length:
        revert with 0, 'to many rewardToken'
    stor9[address(arg1)] = 1
    rewardTokenNumber[address(arg1)] = rewardToken.length
    rewardToken.length++
    rewardToken[rewardToken.length].field_0 = arg1
}

function rewardTokens() payable {
    if rewardToken.length:
        mem[128] = address(rewardToken.field_0)
        if (32 * rewardToken.length) + 32 > 64:
            mem[160] = address(rewardToken.field_256)
            idx = 160
            s = 1
            while (32 * rewardToken.length) + 96 > idx:
                mem[idx + 32] = rewardToken[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * rewardToken.length) + 128] = 32
    mem[(32 * rewardToken.length) + 160] = rewardToken.length
    idx = 0
    s = (32 * rewardToken.length) + 192
    t = 128
    while idx < rewardToken.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * rewardToken.length) + 128
       len (96 * rewardToken.length) + 64
}

function govWithdrawStrategyAddress(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    if not arg2:
        revert with 0, 'token is zero'
    require ext_code.size(arg1)
    staticcall arg1.contain(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function strategieLists() payable {
    mem[64] = (32 * strategieList.length) + 128
    mem[96] = strategieList.length
    if not strategieList.length:
        mem[(32 * strategieList.length) + 128] = 32
        mem[(32 * strategieList.length) + 160] = strategieList.length
        idx = 0
        s = (32 * strategieList.length) + 192
        t = 128
        while idx < strategieList.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * strategieList.length) + 128
           len (96 * strategieList.length) + 64
    mem[128] = address(strategieList.field_0)
    idx = 128
    s = 0
    while (32 * strategieList.length) + 96 > idx:
        mem[idx + 32] = strategieList[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * strategieList.length) + 128] = 32
    mem[(32 * strategieList.length) + 160] = strategieList.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < strategieList.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * strategieList.length) + -mem[64] + 192
}

function govWithdraw(uint256 arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    if arg1 >= strategieList.length:
        revert with 0, 'strategy error'
    if not strategieList[arg1].field_0:
        revert with 0, 'strategy not exists'
    if not arg2:
        revert with 0, 'token is zero'
    if arg1 >= strategieList.length:
        revert with 0, 50
    require ext_code.size(strategieList[arg1].field_0)
    staticcall strategieList[arg1].field_0.contain(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if ext_call.return_data[0]:
        require ext_code.size(strategieList[arg1].field_0)
        call strategieList[arg1].field_0.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
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
        if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
        if 1 > !(roleMember[arg1][1][address(arg2)].field_0 - 1):
            revert with 0, 17
        roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function setVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    require not vaultAddress
    vaultAddress = arg1
    if not roleAdmin[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][address(arg1)].field_0:
        roleAdmin[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][address(arg1)].field_0 = 1
        emit RoleGranted(0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f, arg1, msg.sender);
    if not roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][1][address(arg1)].field_0:
        roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f].field_0++
        roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f].field_0].field_0 = arg1
        roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f].field_0].field_160 = 0
        roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][1][address(arg1)].field_0 = roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f].field_0
}

function withdrawAll(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = sha3(0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce, 0)
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    idx = 0
    s = 0
    while idx < strategieList.length:
        mem[0] = 4
        if strategieList[idx].field_0:
            mem[mem[64] + 4] = arg1
            require ext_code.size(strategieList[idx].field_0)
            staticcall strategieList[idx].field_0.contain(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _17 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_17] == bool(mem[_17])
            if mem[_17]:
                mem[mem[64]] = 0x853828b600000000000000000000000000000000000000000000000000000000
                require ext_code.size(strategieList[idx].field_0)
                call strategieList[idx].field_0.withdrawAll() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = strategieList[idx].field_0
        continue 
}

function setstrategieListPrioritySort(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    if strategieList.length != arg1.length:
        revert with 0, 'shortage in number'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        require stor5[mem[(32 * idx) + 140 len 20]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    strategieListPrioritySort.length = arg1.length
    if not arg1.length:
        idx = 0
        while strategieListPrioritySort.length > idx:
            uint256(strategieListPrioritySort[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * arg1.length) + 128 > idx:
            address(strategieListPrioritySort[s]) = mem[idx + 12 len 20]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while strategieListPrioritySort.length > idx:
            uint256(strategieListPrioritySort[idx]) = 0
            idx = idx + 1
            continue 
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
        if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
            revert with 0, 50
        roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
        if 1 > !(roleMember[arg1][1][address(arg2)].field_0 - 1):
            revert with 0, 17
        roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function withdrawReward(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    if not stor9[address(arg1)]:
        revert with 0, 'rewardToken address error'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        if not arg2:
            revert with 0, 'address is zero'
        mem[ceil32(return_data.size) + 132] = arg2
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
                if not uint32(this.address), mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
                if not mem[ceil32(return_data.size) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return 1
}

function harvestSingleTokenReward(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = sha3(0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f, 0)
    if roleAdmin[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][address(msg.sender)].field_0:
        if not arg1:
            revert with 0, 'singleToken shouldn't 0x0'
        idx = 0
        while idx < strategieList.length:
            mem[0] = 4
            if strategieList[idx].field_0:
                if idx >= strategieList.length:
                    revert with 0, 50
                mem[0] = 4
                mem[mem[64] + 4] = arg1
                require ext_code.size(strategieList[idx].field_0)
                staticcall strategieList[idx].field_0.contain(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _47 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_47] == bool(mem[_47])
                if mem[_47]:
                    require ext_code.size(strategieList[idx].field_0)
                    staticcall strategieList[idx].field_0.0x5c975abb with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _55 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_55] == bool(mem[_55])
                    if not mem[_55]:
                        mem[mem[64]] = 0xc885bc5800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(strategieList[idx].field_0)
                        call strategieList[idx].field_0.withdrawReward() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = sha3(0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce, 0)
        if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
            revert with 0, 'Caller not have INTERFACE_ROLE'
        if not arg1:
            revert with 0, 'singleToken shouldn't 0x0'
        idx = 0
        while idx < strategieList.length:
            mem[0] = 4
            if strategieList[idx].field_0:
                if idx >= strategieList.length:
                    revert with 0, 50
                mem[0] = 4
                mem[mem[64] + 4] = arg1
                require ext_code.size(strategieList[idx].field_0)
                staticcall strategieList[idx].field_0.contain(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _48 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_48] == bool(mem[_48])
                if mem[_48]:
                    require ext_code.size(strategieList[idx].field_0)
                    staticcall strategieList[idx].field_0.0x5c975abb with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _56 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_56] == bool(mem[_56])
                    if not mem[_56]:
                        mem[mem[64]] = 0xc885bc5800000000000000000000000000000000000000000000000000000000
                        require ext_code.size(strategieList[idx].field_0)
                        call strategieList[idx].field_0.withdrawReward() with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function addStrategieList(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor3.field_168):
        revert with 0, 'Controller has been locked'
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    mem[0] = arg1
    mem[32] = 5
    if stor5[address(arg1)]:
        revert with 0, 'this strategy have added'
    require ext_code.size(arg1)
    staticcall arg1.controller() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0, 'this strategy illegal'
    mem[ceil32(return_data.size) + 96] = 0x1f1fcd5100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _21 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127
    _22 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0 or (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require _21 + (32 * _22) + 32 <= return_data.size
    s = ceil32(return_data.size) + _21 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _22:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    while idx < _22:
        if idx >= mem[(2 * ceil32(return_data.size)) + 96]:
            revert with 0, 50
        _100 = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + (2 * ceil32(return_data.size)) + 140 len 20]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.poolInfoExist(address arg1) with:
                gas gas_remaining wei
               args address(_100)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _105 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_105] == bool(mem[_105])
        require mem[_105]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ext_code.size(arg1)
    staticcall arg1.0x5c975abb with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _102 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_102] == bool(mem[_102])
    require not mem[_102]
    if 0 >= mem[(2 * ceil32(return_data.size)) + 96]:
        revert with 0, 50
    _108 = mem[(2 * ceil32(return_data.size)) + 128]
    mem[mem[64] + 4] = mem[(2 * ceil32(return_data.size)) + 140 len 20]
    require ext_code.size(arg1)
    staticcall arg1.contain(address arg1) with:
            gas gas_remaining wei
           args address(_108)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _111 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_111] == bool(mem[_111])
    require mem[_111]
    stor5[address(arg1)] = 1
    strategieListNumber[address(arg1)] = strategieList.length
    strategieList.length++
    strategieList[strategieList.length].field_0 = arg1
    strategieListPrioritySort.length++
    address(strategieListPrioritySort[strategieListPrioritySort.length]) = arg1
    if not roleAdmin[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][address(arg1)].field_0:
        roleAdmin[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][address(arg1)].field_0 = 1
        emit RoleGranted(0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f, arg1, msg.sender);
    if not roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][1][address(arg1)].field_0:
        roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f].field_0++
        roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f].field_0].field_0 = arg1
        roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f].field_0].field_160 = 0
        roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][1][address(arg1)].field_0 = roleMember[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f].field_0
}

function withdrawLp(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = sha3(0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f, 0)
    if roleAdmin[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][address(msg.sender)].field_0:
        if not vaultAddress:
            revert with 0, '!vault'
        if arg2 <= 0:
            revert with 0, 'amount error'
        if not strategieList.length:
            revert with 0, 'strategie is empty'
        idx = 0
        while idx < strategieListPrioritySort.length:
            mem[0] = 7
            if address(strategieListPrioritySort[idx]):
                if idx >= strategieListPrioritySort.length:
                    revert with 0, 50
                mem[0] = 7
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(strategieListPrioritySort[idx]))
                staticcall address(strategieListPrioritySort[idx]).contain(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _63 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_63] == bool(mem[_63])
                if mem[_63]:
                    require ext_code.size(address(strategieListPrioritySort[idx]))
                    staticcall address(strategieListPrioritySort[idx]).0x5c975abb with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _71 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_71] == bool(mem[_71])
                    if not mem[_71]:
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(address(strategieListPrioritySort[idx]))
                        call address(strategieListPrioritySort[idx]).withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _79 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_79] >= arg2:
                        if mem[_79] > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 < mem[_79]:
                            revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[0] = msg.sender
        mem[32] = sha3(0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce, 0)
        if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
            revert with 0, 'Caller not have INTERFACE_ROLE'
        if not vaultAddress:
            revert with 0, '!vault'
        if arg2 <= 0:
            revert with 0, 'amount error'
        if not strategieList.length:
            revert with 0, 'strategie is empty'
        idx = 0
        while idx < strategieListPrioritySort.length:
            mem[0] = 7
            if address(strategieListPrioritySort[idx]):
                if idx >= strategieListPrioritySort.length:
                    revert with 0, 50
                mem[0] = 7
                mem[mem[64] + 4] = arg1
                require ext_code.size(address(strategieListPrioritySort[idx]))
                staticcall address(strategieListPrioritySort[idx]).contain(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _64 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_64] == bool(mem[_64])
                if mem[_64]:
                    require ext_code.size(address(strategieListPrioritySort[idx]))
                    staticcall address(strategieListPrioritySort[idx]).0x5c975abb with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _72 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_72] == bool(mem[_72])
                    if not mem[_72]:
                        mem[mem[64] + 4] = arg1
                        mem[mem[64] + 36] = arg2
                        require ext_code.size(address(strategieListPrioritySort[idx]))
                        call address(strategieListPrioritySort[idx]).withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), arg2
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _80 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        if mem[_80] >= arg2:
                        if mem[_80] > arg2:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 < mem[_80]:
                            revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function govWithdrawSingleTokenForRebalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    mem[100] = arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.available(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getPoolTotalDeposit(address arg1) with:
            gas gas_remaining wei
           args arg1
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if not arg2:
            mem[(2 * ceil32(return_data.size)) + 132] = vaultAddress
            mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 196] = 0
            mem[(2 * ceil32(return_data.size)) + 96] = 100
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor3.field_0)
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
            mem[(2 * ceil32(return_data.size)) + 228] = 32
            mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(arg1):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), msg.sender, 0, 0
            mem[(2 * ceil32(return_data.size)) + 392] = 0
            call arg1 with:
               funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), msg.sender, 0, 0) >> 224
                 gas gas_remaining wei
                args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), msg.sender, 0, 0) << 544)
        else:
            if arg2 <= 0:
                mem[(2 * ceil32(return_data.size)) + 132] = vaultAddress
                mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 196] = arg2
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor3.field_0)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), msg.sender, arg2, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), msg.sender, arg2, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), msg.sender, arg2, 0) << 544)
            else:
                if ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 132] = vaultAddress
                mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                mem[(2 * ceil32(return_data.size)) + 196] = 0
                mem[(2 * ceil32(return_data.size)) + 96] = 100
                mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 0, stor3.field_0)
                mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0x23b872dd(?????)
                mem[(2 * ceil32(return_data.size)) + 228] = 32
                mem[(2 * ceil32(return_data.size)) + 260] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(arg1):
                    revert with 0, 'Address: call to non-contract'
                mem[(2 * ceil32(return_data.size)) + 292 len 128] = unknown_0x23b872dd(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), msg.sender, 0, 0
                mem[(2 * ceil32(return_data.size)) + 392] = 0
                call arg1 with:
                   funct Mask(32, 224, unknown_0x23b872dd(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), msg.sender, 0, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(768, -544, unknown_0x23b872dd(?????), Mask(224, 0, stor3.field_0), uint32(stor3.field_0), msg.sender, 0, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 324] == bool(mem[(2 * ceil32(return_data.size)) + 324])
                if not mem[(2 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function getSingleTokenReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'singleToken shouldn't 0x0'
    if rewardToken.length > test266151307():
        revert with 0, 65
    mem[96] = rewardToken.length
    mem[64] = (32 * rewardToken.length) + 128
    if not rewardToken.length:
        idx = 0
        while idx < strategieList.length:
            mem[0] = 4
            if strategieList[idx].field_0:
                if idx >= strategieList.length:
                    revert with 0, 50
                mem[0] = 4
                mem[mem[64] + 4] = arg1
                require ext_code.size(strategieList[idx].field_0)
                staticcall strategieList[idx].field_0.contain(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _65 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_65] == bool(mem[_65])
                if mem[_65]:
                    mem[mem[64]] = 0x1f1fcd5100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(strategieList[idx].field_0)
                    staticcall strategieList[idx].field_0.want() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _74 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _76 = mem[_74]
                    require mem[_74] <= test266151307()
                    require _74 + return_data.size > _74 + mem[_74] + 31
                    _78 = mem[_74 + mem[_74]]
                    if mem[_74 + mem[_74]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_74 + mem[_74]]) + 1 < 0 or _74 + ceil32(return_data.size) + ceil32(32 * mem[_74 + mem[_74]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _74 + ceil32(return_data.size) + ceil32(32 * mem[_74 + mem[_74]]) + 1
                    mem[_74 + ceil32(return_data.size)] = _78
                    require _76 + (32 * _78) + 32 <= return_data.size
                    t = _74 + _76 + 32
                    u = _74 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _78:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    s = 0
                    while s < rewardToken.length:
                        _114 = mem[_74 + ceil32(return_data.size)]
                        if idx >= strategieList.length:
                            revert with 0, 50
                        mem[0] = s
                        mem[32] = sha3(strategieList[idx].field_0, 11)
                        if not _114:
                            revert with 0, 18
                        if s >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * s) + 128] > !(strategieListEarned[stor4[idx].field_0][s] / _114):
                            revert with 0, 17
                        mem[(32 * s) + 128] = mem[(32 * s) + 128] + (strategieListEarned[stor4[idx].field_0][s] / _114)
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * rewardToken.length] = call.data[calldata.size len 32 * rewardToken.length]
        idx = 0
        while idx < strategieList.length:
            mem[0] = 4
            if strategieList[idx].field_0:
                if idx >= strategieList.length:
                    revert with 0, 50
                mem[0] = 4
                mem[mem[64] + 4] = arg1
                require ext_code.size(strategieList[idx].field_0)
                staticcall strategieList[idx].field_0.contain(address arg1) with:
                        gas gas_remaining wei
                       args address(arg1)
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _67 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_67] == bool(mem[_67])
                if mem[_67]:
                    mem[mem[64]] = 0x1f1fcd5100000000000000000000000000000000000000000000000000000000
                    require ext_code.size(strategieList[idx].field_0)
                    staticcall strategieList[idx].field_0.want() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _75 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _77 = mem[_75]
                    require mem[_75] <= test266151307()
                    require _75 + return_data.size > _75 + mem[_75] + 31
                    _79 = mem[_75 + mem[_75]]
                    if mem[_75 + mem[_75]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_75 + mem[_75]]) + 1 < 0 or _75 + ceil32(return_data.size) + ceil32(32 * mem[_75 + mem[_75]]) + 1 > test266151307():
                        revert with 0, 65
                    mem[64] = _75 + ceil32(return_data.size) + ceil32(32 * mem[_75 + mem[_75]]) + 1
                    mem[_75 + ceil32(return_data.size)] = _79
                    require _77 + (32 * _79) + 32 <= return_data.size
                    t = _75 + _77 + 32
                    u = _75 + ceil32(return_data.size) + 32
                    s = 0
                    while s < _79:
                        require mem[t] == mem[t + 12 len 20]
                        mem[u] = mem[t]
                        t = t + 32
                        u = u + 32
                        s = s + 1
                        continue 
                    s = 0
                    while s < rewardToken.length:
                        _115 = mem[_75 + ceil32(return_data.size)]
                        if idx >= strategieList.length:
                            revert with 0, 50
                        mem[0] = s
                        mem[32] = sha3(strategieList[idx].field_0, 11)
                        if not _115:
                            revert with 0, 18
                        if s >= mem[96]:
                            revert with 0, 50
                        if mem[(32 * s) + 128] > !(strategieListEarned[stor4[idx].field_0][s] / _115):
                            revert with 0, 17
                        mem[(32 * s) + 128] = mem[(32 * s) + 128] + (strategieListEarned[stor4[idx].field_0][s] / _115)
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

function govEarnbyStrategyAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = sha3(0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce, 0)
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    mem[96] = 0x1f1fcd5100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _10 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _11 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _11
    require _10 + (32 * _11) + 32 <= return_data.size
    s = _10 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _11:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if _11 > test266151307():
        revert with 0, 65
    _172 = mem[64]
    mem[mem[64]] = _11
    mem[64] = mem[64] + (32 * _11) + 32
    if not _11:
        idx = 0
        while idx < _11:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _335 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.available(address arg1) with:
                    gas gas_remaining wei
                   args address(_335)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _341 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_172]:
                revert with 0, 50
            mem[(32 * idx) + _172 + 32] = mem[_341]
            if idx >= mem[_172]:
                revert with 0, 50
            _349 = mem[(32 * idx) + _172 + 32]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _353 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _355 = mem[64]
            mem[mem[64] + 36] = vaultAddress
            mem[mem[64] + 68] = arg1
            mem[mem[64] + 100] = _349
            _357 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_357 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_357 + 36 len 28]
            mem[64] = _355 + 196
            mem[_355 + 132] = 32
            mem[_355 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_353)):
                revert with 0, 'Address: call to non-contract'
            _371 = mem[_357]
            s = 0
            while s < _371:
                mem[s + _355 + 196] = mem[s + _357 + 32]
                s = s + 32
                continue 
            if ceil32(_371) > _371:
                mem[_371 + _355 + 196] = 0
            call address(_353).mem[_355 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_355 + 200 len _371 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_355 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_355 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _355 + 264] = mem[idx + _355 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_355 + 264]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _355 + ceil32(return_data.size) + 197
                mem[_355 + 196] = return_data.size
                mem[_355 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_355 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_355 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _355 + ceil32(return_data.size) + 265] = mem[idx + _355 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_355 + ceil32(return_data.size) + 265]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_355 + 228] == bool(mem[_355 + 228])
                    if not mem[_355 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[_172 + 32 len 32 * _11] = call.data[calldata.size len 32 * _11]
        idx = 0
        while idx < _11:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _337 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.available(address arg1) with:
                    gas gas_remaining wei
                   args address(_337)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _342 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_172]:
                revert with 0, 50
            mem[(32 * idx) + _172 + 32] = mem[_342]
            if idx >= mem[_172]:
                revert with 0, 50
            _351 = mem[(32 * idx) + _172 + 32]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _354 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _356 = mem[64]
            mem[mem[64] + 36] = vaultAddress
            mem[mem[64] + 68] = arg1
            mem[mem[64] + 100] = _351
            _359 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_359 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_359 + 36 len 28]
            mem[64] = _356 + 196
            mem[_356 + 132] = 32
            mem[_356 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_354)):
                revert with 0, 'Address: call to non-contract'
            _373 = mem[_359]
            s = 0
            while s < _373:
                mem[s + _356 + 196] = mem[s + _359 + 32]
                s = s + 32
                continue 
            if ceil32(_373) > _373:
                mem[_373 + _356 + 196] = 0
            call address(_354).mem[_356 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_356 + 200 len _373 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_356 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_356 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _356 + 264] = mem[idx + _356 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_356 + 264]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _356 + ceil32(return_data.size) + 197
                mem[_356 + 196] = return_data.size
                mem[_356 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_356 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_356 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _356 + ceil32(return_data.size) + 265] = mem[idx + _356 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_356 + ceil32(return_data.size) + 265]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_356 + 228] == bool(mem[_356 + 228])
                    if not mem[_356 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    require ext_code.size(arg1)
    call arg1.deposit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function govEarn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[32] = sha3(0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce, 0)
    if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
        revert with 0, 'Caller is not governance'
    if arg1 >= strategieList.length:
        revert with 0, 'strategy error'
    if not strategieList[arg1].field_0:
        revert with 0, 'strategy not exists'
    if arg1 >= strategieList.length:
        revert with 0, 50
    mem[0] = 4
    mem[96] = 0x1f1fcd5100000000000000000000000000000000000000000000000000000000
    require ext_code.size(strategieList[arg1].field_0)
    staticcall strategieList[arg1].field_0.want() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _16 = mem[96]
    require mem[96] <= test266151307()
    require return_data.size + 96 > mem[96] + 127
    _17 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _17
    require _16 + (32 * _17) + 32 <= return_data.size
    s = _16 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _17:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if _17 > test266151307():
        revert with 0, 65
    _180 = mem[64]
    mem[mem[64]] = _17
    mem[64] = mem[64] + (32 * _17) + 32
    if not _17:
        idx = 0
        while idx < _17:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _345 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.available(address arg1) with:
                    gas gas_remaining wei
                   args address(_345)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _351 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_180]:
                revert with 0, 50
            mem[(32 * idx) + _180 + 32] = mem[_351]
            if arg1 >= strategieList.length:
                revert with 0, 50
            mem[0] = 4
            if idx >= mem[_180]:
                revert with 0, 50
            _361 = mem[(32 * idx) + _180 + 32]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _365 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _367 = mem[64]
            mem[mem[64] + 36] = vaultAddress
            mem[mem[64] + 68] = strategieList[arg1].field_0
            mem[mem[64] + 100] = _361
            _369 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_369 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_369 + 36 len 28]
            mem[64] = _367 + 196
            mem[_367 + 132] = 32
            mem[_367 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_365)):
                revert with 0, 'Address: call to non-contract'
            _383 = mem[_369]
            s = 0
            while s < _383:
                mem[s + _367 + 196] = mem[s + _369 + 32]
                s = s + 32
                continue 
            if ceil32(_383) > _383:
                mem[_383 + _367 + 196] = 0
            call address(_365).mem[_367 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_367 + 200 len _383 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_367 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_367 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _367 + 264] = mem[idx + _367 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_367 + 264]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _367 + ceil32(return_data.size) + 197
                mem[_367 + 196] = return_data.size
                mem[_367 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_367 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_367 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _367 + ceil32(return_data.size) + 265] = mem[idx + _367 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_367 + ceil32(return_data.size) + 265]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_367 + 228] == bool(mem[_367 + 228])
                    if not mem[_367 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        mem[_180 + 32 len 32 * _17] = call.data[calldata.size len 32 * _17]
        idx = 0
        while idx < _17:
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _347 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + ceil32(return_data.size) + 140 len 20]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.available(address arg1) with:
                    gas gas_remaining wei
                   args address(_347)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _352 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if idx >= mem[_180]:
                revert with 0, 50
            mem[(32 * idx) + _180 + 32] = mem[_352]
            if arg1 >= strategieList.length:
                revert with 0, 50
            mem[0] = 4
            if idx >= mem[_180]:
                revert with 0, 50
            _363 = mem[(32 * idx) + _180 + 32]
            if idx >= mem[ceil32(return_data.size) + 96]:
                revert with 0, 50
            _366 = mem[(32 * idx) + ceil32(return_data.size) + 128]
            _368 = mem[64]
            mem[mem[64] + 36] = vaultAddress
            mem[mem[64] + 68] = strategieList[arg1].field_0
            mem[mem[64] + 100] = _363
            _371 = mem[64]
            mem[mem[64]] = 100
            mem[64] = mem[64] + 132
            mem[_371 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_371 + 36 len 28]
            mem[64] = _368 + 196
            mem[_368 + 132] = 32
            mem[_368 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_366)):
                revert with 0, 'Address: call to non-contract'
            _385 = mem[_371]
            s = 0
            while s < _385:
                mem[s + _368 + 196] = mem[s + _371 + 32]
                s = s + 32
                continue 
            if ceil32(_385) > _385:
                mem[_385 + _368 + 196] = 0
            call address(_366).mem[_368 + 196 len 4] with:
                 gas gas_remaining wei
                args mem[_368 + 200 len _385 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_368 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_368 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _368 + 264] = mem[idx + _368 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_368 + 264]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _368 + ceil32(return_data.size) + 197
                mem[_368 + 196] = return_data.size
                mem[_368 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_368 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_368 + ceil32(return_data.size) + 201] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _368 + ceil32(return_data.size) + 265] = mem[idx + _368 + 164]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_368 + ceil32(return_data.size) + 265]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_368 + 228] == bool(mem[_368 + 228])
                    if not mem[_368 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    require ext_code.size(strategieList[arg1].field_0)
    call strategieList[arg1].field_0.deposit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function earn(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = sha3(0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f, 0)
    if roleAdmin[0xb1886f5b5d23a7f8b3645010a8eb98414557d4607145067846682ff187e4950f][address(msg.sender)].field_0:
        if not uint8(stor3.field_160):
            mem[100] = arg1
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.available(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if 1 > strategieListPrioritySort.length:
                    revert with 0, 'need at less one strategy'
                idx = strategieListPrioritySort.length
                while idx:
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= strategieListPrioritySort.length:
                        revert with 0, 50
                    mem[0] = 7
                    if address(strategieListPrioritySort[idx]):
                        if idx - 1 >= strategieListPrioritySort.length:
                            revert with 0, 50
                        mem[0] = 7
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(strategieListPrioritySort[idx]))
                        staticcall address(strategieListPrioritySort[idx]).contain(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _393 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_393] == bool(mem[_393])
                        if mem[_393]:
                            require ext_code.size(address(strategieListPrioritySort[idx]))
                            staticcall address(strategieListPrioritySort[idx]).0x5c975abb with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _401 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_401] == bool(mem[_401])
                            if not mem[_401]:
                                mem[mem[64]] = 0x1f1fcd5100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(strategieListPrioritySort[idx]))
                                staticcall address(strategieListPrioritySort[idx]).want() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _409 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _411 = mem[_409]
                                require mem[_409] <= test266151307()
                                require _409 + return_data.size > _409 + mem[_409] + 31
                                _413 = mem[_409 + mem[_409]]
                                if mem[_409 + mem[_409]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_409 + mem[_409]]) + 1 < 0 or _409 + ceil32(return_data.size) + ceil32(32 * mem[_409 + mem[_409]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _409 + ceil32(return_data.size) + ceil32(32 * mem[_409 + mem[_409]]) + 1
                                mem[_409 + ceil32(return_data.size)] = _413
                                require _411 + (32 * _413) + 32 <= return_data.size
                                t = _409 + _411 + 32
                                u = _409 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _413:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                if _413 > test266151307():
                                    revert with 0, 65
                                _751 = mem[64]
                                mem[mem[64]] = _413
                                mem[64] = mem[64] + (32 * _413) + 32
                                if not _413:
                                    s = 0
                                    while s < _413:
                                        if s >= mem[_409 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _1085 = mem[(32 * s) + _409 + ceil32(return_data.size) + 32]
                                        mem[mem[64] + 4] = mem[(32 * s) + _409 + ceil32(return_data.size) + 44 len 20]
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.available(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_1085)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1111 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if s >= mem[_751]:
                                            revert with 0, 50
                                        mem[(32 * s) + _751 + 32] = mem[_1111]
                                        if s >= mem[_751]:
                                            revert with 0, 50
                                        if 0 == mem[(32 * s) + _751 + 32]:
                                            idx = idx - 1
                                            continue 
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    _1401 = mem[_409 + ceil32(return_data.size)]
                                    s = 0
                                    while s < _1401:
                                        if idx - 1 >= strategieListPrioritySort.length:
                                            revert with 0, 50
                                        mem[0] = 7
                                        if s >= mem[_751]:
                                            revert with 0, 50
                                        _1421 = mem[(32 * s) + _751 + 32]
                                        if s >= mem[_409 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _1429 = mem[(32 * s) + _409 + ceil32(return_data.size) + 32]
                                        _1433 = mem[64]
                                        mem[mem[64] + 36] = vaultAddress
                                        mem[mem[64] + 68] = address(strategieListPrioritySort[idx])
                                        mem[mem[64] + 100] = _1421
                                        _1437 = mem[64]
                                        mem[mem[64]] = 100
                                        mem[64] = mem[64] + 132
                                        mem[_1437 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1437 + 36 len 28]
                                        mem[64] = _1433 + 196
                                        mem[_1433 + 132] = 32
                                        mem[_1433 + 164] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(_1429)):
                                            revert with 0, 'Address: call to non-contract'
                                        _1465 = mem[_1437]
                                        idx = 0
                                        while idx < _1465:
                                            mem[idx + _1433 + 196] = mem[idx + _1437 + 32]
                                            _1401 = mem[_409 + ceil32(return_data.size)]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_1465) > _1465:
                                            mem[_1465 + _1433 + 196] = 0
                                        call address(_1429).mem[_1433 + 196 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1433 + 200 len _1465 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1433 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1433 + 200] = 32
                                                mem[_1433 + 232] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _1433 + 264] = mem[idx + _1433 + 164]
                                                    _1401 = mem[_409 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1433 + 264]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _1433 + ceil32(return_data.size) + 197
                                            mem[_1433 + 196] = return_data.size
                                            mem[_1433 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1433 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1433 + ceil32(return_data.size) + 201] = 32
                                                mem[_1433 + ceil32(return_data.size) + 233] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _1433 + ceil32(return_data.size) + 265] = mem[idx + _1433 + 164]
                                                    _1401 = mem[_409 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1433 + ceil32(return_data.size) + 265]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_1433 + 228] == bool(mem[_1433 + 228])
                                                if not mem[_1433 + 228]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if s == -1:
                                            revert with 0, 17
                                        _1401 = mem[_409 + ceil32(return_data.size)]
                                        s = s + 1
                                        continue 
                                else:
                                    mem[_751 + 32 len 32 * _413] = call.data[calldata.size len 32 * _413]
                                    s = 0
                                    while s < _413:
                                        if s >= mem[_409 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _1087 = mem[(32 * s) + _409 + ceil32(return_data.size) + 32]
                                        mem[mem[64] + 4] = mem[(32 * s) + _409 + ceil32(return_data.size) + 44 len 20]
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.available(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_1087)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1114 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if s >= mem[_751]:
                                            revert with 0, 50
                                        mem[(32 * s) + _751 + 32] = mem[_1114]
                                        if s >= mem[_751]:
                                            revert with 0, 50
                                        if 0 == mem[(32 * s) + _751 + 32]:
                                            idx = idx - 1
                                            continue 
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    _1402 = mem[_409 + ceil32(return_data.size)]
                                    s = 0
                                    while s < _1402:
                                        if idx - 1 >= strategieListPrioritySort.length:
                                            revert with 0, 50
                                        mem[0] = 7
                                        if s >= mem[_751]:
                                            revert with 0, 50
                                        _1423 = mem[(32 * s) + _751 + 32]
                                        if s >= mem[_409 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _1430 = mem[(32 * s) + _409 + ceil32(return_data.size) + 32]
                                        _1434 = mem[64]
                                        mem[mem[64] + 36] = vaultAddress
                                        mem[mem[64] + 68] = address(strategieListPrioritySort[idx])
                                        mem[mem[64] + 100] = _1423
                                        _1439 = mem[64]
                                        mem[mem[64]] = 100
                                        mem[64] = mem[64] + 132
                                        mem[_1439 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1439 + 36 len 28]
                                        mem[64] = _1434 + 196
                                        mem[_1434 + 132] = 32
                                        mem[_1434 + 164] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(_1430)):
                                            revert with 0, 'Address: call to non-contract'
                                        _1467 = mem[_1439]
                                        idx = 0
                                        while idx < _1467:
                                            mem[idx + _1434 + 196] = mem[idx + _1439 + 32]
                                            _1402 = mem[_409 + ceil32(return_data.size)]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_1467) > _1467:
                                            mem[_1467 + _1434 + 196] = 0
                                        call address(_1430).mem[_1434 + 196 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1434 + 200 len _1467 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1434 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1434 + 200] = 32
                                                mem[_1434 + 232] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _1434 + 264] = mem[idx + _1434 + 164]
                                                    _1402 = mem[_409 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1434 + 264]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _1434 + ceil32(return_data.size) + 197
                                            mem[_1434 + 196] = return_data.size
                                            mem[_1434 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1434 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1434 + ceil32(return_data.size) + 201] = 32
                                                mem[_1434 + ceil32(return_data.size) + 233] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _1434 + ceil32(return_data.size) + 265] = mem[idx + _1434 + 164]
                                                    _1402 = mem[_409 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1434 + ceil32(return_data.size) + 265]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_1434 + 228] == bool(mem[_1434 + 228])
                                                if not mem[_1434 + 228]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if s == -1:
                                            revert with 0, 17
                                        _1402 = mem[_409 + ceil32(return_data.size)]
                                        s = s + 1
                                        continue 
                                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(strategieListPrioritySort[idx]))
                                call address(strategieListPrioritySort[idx]).deposit() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    idx = idx - 1
                    continue 
    else:
        mem[0] = msg.sender
        mem[32] = sha3(0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce, 0)
        if not roleAdmin[0xfe71840dc4906352362b0cdaf79870196c8e42acafade72d5d5a6d59291253ce][address(msg.sender)].field_0:
            revert with 0, 'Caller not have INTERFACE_ROLE'
        if not uint8(stor3.field_160):
            mem[100] = arg1
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.available(address arg1) with:
                    gas gas_remaining wei
                   args arg1
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            if ext_call.return_data[0] > 0:
                if 1 > strategieListPrioritySort.length:
                    revert with 0, 'need at less one strategy'
                idx = strategieListPrioritySort.length
                while idx:
                    if idx < 1:
                        revert with 0, 17
                    if idx - 1 >= strategieListPrioritySort.length:
                        revert with 0, 50
                    mem[0] = 7
                    if address(strategieListPrioritySort[idx]):
                        if idx - 1 >= strategieListPrioritySort.length:
                            revert with 0, 50
                        mem[0] = 7
                        mem[mem[64] + 4] = arg1
                        require ext_code.size(address(strategieListPrioritySort[idx]))
                        staticcall address(strategieListPrioritySort[idx]).contain(address arg1) with:
                                gas gas_remaining wei
                               args address(arg1)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _394 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_394] == bool(mem[_394])
                        if mem[_394]:
                            require ext_code.size(address(strategieListPrioritySort[idx]))
                            staticcall address(strategieListPrioritySort[idx]).0x5c975abb with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _402 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_402] == bool(mem[_402])
                            if not mem[_402]:
                                mem[mem[64]] = 0x1f1fcd5100000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(strategieListPrioritySort[idx]))
                                staticcall address(strategieListPrioritySort[idx]).want() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _410 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _412 = mem[_410]
                                require mem[_410] <= test266151307()
                                require _410 + return_data.size > _410 + mem[_410] + 31
                                _414 = mem[_410 + mem[_410]]
                                if mem[_410 + mem[_410]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_410 + mem[_410]]) + 1 < 0 or _410 + ceil32(return_data.size) + ceil32(32 * mem[_410 + mem[_410]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _410 + ceil32(return_data.size) + ceil32(32 * mem[_410 + mem[_410]]) + 1
                                mem[_410 + ceil32(return_data.size)] = _414
                                require _412 + (32 * _414) + 32 <= return_data.size
                                t = _410 + _412 + 32
                                u = _410 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _414:
                                    require mem[t] == mem[t + 12 len 20]
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                                if _414 > test266151307():
                                    revert with 0, 65
                                _752 = mem[64]
                                mem[mem[64]] = _414
                                mem[64] = mem[64] + (32 * _414) + 32
                                if not _414:
                                    s = 0
                                    while s < _414:
                                        if s >= mem[_410 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _1089 = mem[(32 * s) + _410 + ceil32(return_data.size) + 32]
                                        mem[mem[64] + 4] = mem[(32 * s) + _410 + ceil32(return_data.size) + 44 len 20]
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.available(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_1089)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1117 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if s >= mem[_752]:
                                            revert with 0, 50
                                        mem[(32 * s) + _752 + 32] = mem[_1117]
                                        if s >= mem[_752]:
                                            revert with 0, 50
                                        if 0 == mem[(32 * s) + _752 + 32]:
                                            idx = idx - 1
                                            continue 
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    _1403 = mem[_410 + ceil32(return_data.size)]
                                    s = 0
                                    while s < _1403:
                                        if idx - 1 >= strategieListPrioritySort.length:
                                            revert with 0, 50
                                        mem[0] = 7
                                        if s >= mem[_752]:
                                            revert with 0, 50
                                        _1425 = mem[(32 * s) + _752 + 32]
                                        if s >= mem[_410 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _1431 = mem[(32 * s) + _410 + ceil32(return_data.size) + 32]
                                        _1435 = mem[64]
                                        mem[mem[64] + 36] = vaultAddress
                                        mem[mem[64] + 68] = address(strategieListPrioritySort[idx])
                                        mem[mem[64] + 100] = _1425
                                        _1441 = mem[64]
                                        mem[mem[64]] = 100
                                        mem[64] = mem[64] + 132
                                        mem[_1441 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1441 + 36 len 28]
                                        mem[64] = _1435 + 196
                                        mem[_1435 + 132] = 32
                                        mem[_1435 + 164] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(_1431)):
                                            revert with 0, 'Address: call to non-contract'
                                        _1469 = mem[_1441]
                                        idx = 0
                                        while idx < _1469:
                                            mem[idx + _1435 + 196] = mem[idx + _1441 + 32]
                                            _1403 = mem[_410 + ceil32(return_data.size)]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_1469) > _1469:
                                            mem[_1469 + _1435 + 196] = 0
                                        call address(_1431).mem[_1435 + 196 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1435 + 200 len _1469 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1435 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1435 + 200] = 32
                                                mem[_1435 + 232] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _1435 + 264] = mem[idx + _1435 + 164]
                                                    _1403 = mem[_410 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1435 + 264]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _1435 + ceil32(return_data.size) + 197
                                            mem[_1435 + 196] = return_data.size
                                            mem[_1435 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1435 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1435 + ceil32(return_data.size) + 201] = 32
                                                mem[_1435 + ceil32(return_data.size) + 233] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _1435 + ceil32(return_data.size) + 265] = mem[idx + _1435 + 164]
                                                    _1403 = mem[_410 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1435 + ceil32(return_data.size) + 265]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_1435 + 228] == bool(mem[_1435 + 228])
                                                if not mem[_1435 + 228]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if s == -1:
                                            revert with 0, 17
                                        _1403 = mem[_410 + ceil32(return_data.size)]
                                        s = s + 1
                                        continue 
                                else:
                                    mem[_752 + 32 len 32 * _414] = call.data[calldata.size len 32 * _414]
                                    s = 0
                                    while s < _414:
                                        if s >= mem[_410 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _1091 = mem[(32 * s) + _410 + ceil32(return_data.size) + 32]
                                        mem[mem[64] + 4] = mem[(32 * s) + _410 + ceil32(return_data.size) + 44 len 20]
                                        require ext_code.size(vaultAddress)
                                        staticcall vaultAddress.available(address arg1) with:
                                                gas gas_remaining wei
                                               args address(_1091)
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1120 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        if s >= mem[_752]:
                                            revert with 0, 50
                                        mem[(32 * s) + _752 + 32] = mem[_1120]
                                        if s >= mem[_752]:
                                            revert with 0, 50
                                        if 0 == mem[(32 * s) + _752 + 32]:
                                            idx = idx - 1
                                            continue 
                                        if s == -1:
                                            revert with 0, 17
                                        s = s + 1
                                        continue 
                                    _1404 = mem[_410 + ceil32(return_data.size)]
                                    s = 0
                                    while s < _1404:
                                        if idx - 1 >= strategieListPrioritySort.length:
                                            revert with 0, 50
                                        mem[0] = 7
                                        if s >= mem[_752]:
                                            revert with 0, 50
                                        _1427 = mem[(32 * s) + _752 + 32]
                                        if s >= mem[_410 + ceil32(return_data.size)]:
                                            revert with 0, 50
                                        _1432 = mem[(32 * s) + _410 + ceil32(return_data.size) + 32]
                                        _1436 = mem[64]
                                        mem[mem[64] + 36] = vaultAddress
                                        mem[mem[64] + 68] = address(strategieListPrioritySort[idx])
                                        mem[mem[64] + 100] = _1427
                                        _1443 = mem[64]
                                        mem[mem[64]] = 100
                                        mem[64] = mem[64] + 132
                                        mem[_1443 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_1443 + 36 len 28]
                                        mem[64] = _1436 + 196
                                        mem[_1436 + 132] = 32
                                        mem[_1436 + 164] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(address(_1432)):
                                            revert with 0, 'Address: call to non-contract'
                                        _1471 = mem[_1443]
                                        idx = 0
                                        while idx < _1471:
                                            mem[idx + _1436 + 196] = mem[idx + _1443 + 32]
                                            _1404 = mem[_410 + ceil32(return_data.size)]
                                            idx = idx + 32
                                            continue 
                                        if ceil32(_1471) > _1471:
                                            mem[_1471 + _1436 + 196] = 0
                                        call address(_1432).mem[_1436 + 196 len 4] with:
                                             gas gas_remaining wei
                                            args mem[_1436 + 200 len _1471 - 4]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if mem[96]:
                                                    revert with memory
                                                      from 128
                                                       len mem[96]
                                                mem[_1436 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1436 + 200] = 32
                                                mem[_1436 + 232] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _1436 + 264] = mem[idx + _1436 + 164]
                                                    _1404 = mem[_410 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1436 + 264]
                                            if mem[96]:
                                                require mem[96] >= 32
                                                require mem[128] == bool(mem[128])
                                                if not mem[128]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        else:
                                            mem[64] = _1436 + ceil32(return_data.size) + 197
                                            mem[_1436 + 196] = return_data.size
                                            mem[_1436 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                mem[_1436 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                                mem[_1436 + ceil32(return_data.size) + 201] = 32
                                                mem[_1436 + ceil32(return_data.size) + 233] = 32
                                                idx = 0
                                                while idx < 32:
                                                    mem[idx + _1436 + ceil32(return_data.size) + 265] = mem[idx + _1436 + 164]
                                                    _1404 = mem[_410 + ceil32(return_data.size)]
                                                    idx = idx + 32
                                                    continue 
                                                revert with 0, 32, 32, mem[_1436 + ceil32(return_data.size) + 265]
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[_1436 + 228] == bool(mem[_1436 + 228])
                                                if not mem[_1436 + 228]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                        if s == -1:
                                            revert with 0, 17
                                        _1404 = mem[_410 + ceil32(return_data.size)]
                                        s = s + 1
                                        continue 
                                mem[mem[64]] = 0xd0e30db000000000000000000000000000000000000000000000000000000000
                                require ext_code.size(address(strategieListPrioritySort[idx]))
                                call address(strategieListPrioritySort[idx]).deposit() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    idx = idx - 1
                    continue 
}



}
