contract main {




// =====================  Runtime code  =====================


#
#  - transferERC20(address arg1, address arg2, uint256 arg3)
#
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
address pendingOwner;
address managerAddress;
uint256 stor8;
address aTokenAddress;
address incentivesControllerAddress;
uint8 decimals; offset 160
address sub_873ba41eAddress;

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function manager() payable {
    return managerAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_873ba41e(?) payable {
    return sub_873ba41eAddress
}

function owner() payable {
    return owner
}

function aToken() payable {
    return aTokenAddress
}

function incentivesController() payable {
    return incentivesControllerAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function pendingOwner() payable {
    return pendingOwner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function claimOwnership() payable {
    if pendingOwner != msg.sender:
        revert with 0, 'Ownable/caller-not-pendingOwner'
    owner = pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    pendingOwner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable/pendingOwner-not-zero-address'
    pendingOwner = arg1
    emit OwnershipOffered(arg1);
}

function depositToken() payable {
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function setManager(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    if managerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable/existing-manager-address'
    managerAddress = arg1
    emit ManagerTransferred(managerAddress, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function balanceOfToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not totalSupply:
        return balanceOf[address(arg1)]
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if balanceOf[address(arg1)] and ext_call.return_data[0] > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    return (balanceOf[address(arg1)] * ext_call.return_data[0] / totalSupply)
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[(uint255(stor3.length) * 0.5) + ceil32(uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[stor3.length.field_1 + ceil32(stor3.length.field_1) + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[(uint255(stor4.length) * 0.5) + ceil32(uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[stor4.length.field_1 + ceil32(stor4.length.field_1) + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function claimRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if managerAddress == msg.sender:
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ATokenYieldSource/recipient-not-zero-address'
        mem[128] = aTokenAddress
        mem[160] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
        mem[164] = 64
        idx = 0
        s = 128
        t = 260
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(incentivesControllerAddress)
        staticcall incentivesControllerAddress.getRewardsBalance(address[] arg1, address arg2) with:
                gas gas_remaining wei
               args Array(len=1, data=mem[260]), this.address
        mem[160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 160] = 0x3111e7b300000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 164] = 96
        idx = 0
        s = 128
        t = ceil32(return_data.size) + 292
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(incentivesControllerAddress)
        call incentivesControllerAddress.claimRewards(address[] arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args Array(len=1, data=mem[ceil32(return_data.size) + 292]), ext_call.return_data[0], arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Claimed(ext_call.return_data[0], msg.sender, arg1);
    else:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Manageable/caller-not-manager-or-owner'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ATokenYieldSource/recipient-not-zero-address'
        mem[96] = 1
        mem[128] = aTokenAddress
        mem[160] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
        mem[164] = 64
        mem[228] = 1
        idx = 0
        s = 128
        t = 260
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = this.address
        require ext_code.size(incentivesControllerAddress)
        staticcall incentivesControllerAddress.getRewardsBalance(address[] arg1, address arg2) with:
                gas gas_remaining wei
               args Array(len=1, data=mem[260]), this.address
        mem[160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 160
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 160] = 0x3111e7b300000000000000000000000000000000000000000000000000000000
        mem[ceil32(return_data.size) + 164] = 96
        mem[ceil32(return_data.size) + 260] = 1
        idx = 0
        s = 128
        t = mem[64] + 132
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 36] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 228] = arg1
        require ext_code.size(incentivesControllerAddress)
        call incentivesControllerAddress.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(return_data.size) + -mem[64] + 320]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _76 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64]] = mem[_76]
        emit Claimed(mem[mem[64]], msg.sender, arg1);
    return 1
}

function sponsor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_873ba41eAddress)
    staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    _10 = mem[ceil32(return_data.size) + 96]
    require mem[ceil32(return_data.size) + 96] <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
    _11 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
    require return_data.size >= _10 + (32 * _11) + 32
    s = ceil32(return_data.size) + _10 + 128
    t = (2 * ceil32(return_data.size)) + 128
    idx = 0
    while idx < _11:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if 0 >= _11:
        revert with 0, 50
    require ext_code.size(mem[(2 * ceil32(return_data.size)) + 140 len 20])
    staticcall mem[(2 * ceil32(return_data.size)) + 140 len 20].getLendingPool() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _120 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _121 = mem[_120]
    require mem[_120] == mem[_120 + 12 len 20]
    _122 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = arg1
    _123 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_122 + 132] = 32
    mem[_122 + 164] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    _130 = mem[_123]
    mem[_122 + 196 len ceil32(mem[_123])] = mem[_123 + 32 len ceil32(mem[_123])]
    if ceil32(_130) > _130:
        mem[_130 + _122 + 196] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args mem[_122 + 200 len _130 - 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_122 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_122 + 228] == bool(mem[_122 + 228])
            if not mem[_122 + 228]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(address(_121))
    call address(_121).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg1, this.address, 188
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Sponsored(arg1, msg.sender);
    stor8 = 1
}

function approveMaxAmount() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable/caller-not-owner'
    mem[96] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_873ba41eAddress)
    staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= test266151307()
    require mem[96] + 127 < return_data.size + 96
    _7 = mem[mem[96] + 96]
    if mem[mem[96] + 96] > test266151307():
        revert with 0, 65
    if ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96] + 96]) + 1 < 0:
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= _6 + (32 * _7) + 32
    s = _6 + 128
    t = ceil32(return_data.size) + 128
    idx = 0
    while idx < _7:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if 0 >= _7:
        revert with 0, 50
    require ext_code.size(mem[ceil32(return_data.size) + 140 len 20])
    staticcall mem[ceil32(return_data.size) + 140 len 20].getLendingPool() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _112 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _113 = mem[_112]
    require mem[_112] == mem[_112 + 12 len 20]
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _116 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _117 = mem[_116]
    require mem[_116] == mem[_116 + 12 len 20]
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(_113)
    require ext_code.size(address(_117))
    staticcall address(_117).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(_113)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _120 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _121 = mem[_120]
    if -1 < mem[_120]:
        revert with 0, 17
    mem[mem[64] + 4] = this.address
    mem[mem[64] + 36] = address(_113)
    require ext_code.size(address(_117))
    staticcall address(_117).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(_113)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _124 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _125 = mem[_124]
    if mem[_124] > !(-_121 - 1):
        revert with 0, 17
    _126 = mem[64]
    mem[mem[64] + 36] = address(_113)
    mem[mem[64] + 68] = _125 + -_121 - 1
    _127 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = approve(address arg1, uint256 arg2)
    mem[64] = mem[64] + 164
    mem[_126 + 100] = 32
    mem[_126 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(_117)):
        revert with 0, 'Address: call to non-contract'
    _134 = mem[_127]
    mem[_126 + 164 len ceil32(mem[_127])] = mem[_127 + 32 len ceil32(mem[_127])]
    if ceil32(_134) > _134:
        mem[_134 + _126 + 164] = 0
    call address(_117) with:
         gas gas_remaining wei
        args mem[_126 + 168 len _134 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_126 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_126 + 196] == bool(mem[_126 + 196])
            if not mem[_126 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    return 1
}

function supplyTokenTo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    if not totalSupply:
        if arg1 <= 0:
            revert with 0, 'ATokenYieldSource/shares-gt-zero'
        require ext_code.size(aTokenAddress)
        staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 96] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_873ba41eAddress)
        staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _27 = mem[ceil32(return_data.size) + 96]
        require mem[ceil32(return_data.size) + 96] <= test266151307()
        require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 127 < ceil32(return_data.size) + return_data.size + 96
        _29 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96] > test266151307():
            revert with 0, 65
        if (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]) + 97
        mem[(2 * ceil32(return_data.size)) + 96] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96] + 96]
        require return_data.size >= _27 + (32 * _29) + 32
        s = ceil32(return_data.size) + _27 + 128
        t = (2 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _29:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if 0 >= _29:
            revert with 0, 50
        require ext_code.size(mem[(2 * ceil32(return_data.size)) + 140 len 20])
        staticcall mem[(2 * ceil32(return_data.size)) + 140 len 20].getLendingPool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _518 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _521 = mem[_518]
        require mem[_518] == mem[_518 + 12 len 20]
        _524 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = this.address
        mem[mem[64] + 100] = arg1
        _529 = mem[64]
        mem[mem[64]] = 100
        mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
        mem[64] = mem[64] + 196
        mem[_524 + 132] = 32
        mem[_524 + 164] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _550 = mem[_529]
        mem[_524 + 196 len ceil32(mem[_529])] = mem[_529 + 32 len ceil32(mem[_529])]
        if ceil32(_550) > _550:
            mem[_550 + _524 + 196] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_524 + 200 len _550 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_524 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_524 + 228] == bool(mem[_524 + 228])
                if not mem[_524 + 228]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        require ext_code.size(address(_521))
        call address(_521).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg1, this.address, 188
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not arg2:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !arg1:
            revert with 0, 17
        totalSupply += arg1
        if balanceOf[address(arg2)] > !arg1:
            revert with 0, 17
        balanceOf[address(arg2)] += arg1
        emit Transfer(arg1, 0, arg2);
        emit SuppliedTokenTo(arg1, arg1, msg.sender, arg2);
    else:
        mem[100] = this.address
        require ext_code.size(aTokenAddress)
        staticcall aTokenAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not totalSupply:
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 0 / ext_call.return_data[0]:
                revert with 0, 'ATokenYieldSource/shares-gt-zero'
            if 0 / ext_call.return_data[0] and arg1 > -1 / 0 / ext_call.return_data[0]:
                revert with 0, 17
            if not 0 / ext_call.return_data[0]:
                revert with 0, 18
            if 0 / ext_call.return_data[0] * arg1 / 0 / ext_call.return_data[0] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 160] = 26
            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] * arg1 / 10^18 <= 0:
                revert with 0, 'ATokenYieldSource/shares-gt-zero'
            require ext_code.size(aTokenAddress)
            staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 224] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_873ba41eAddress)
            staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _82 = mem[(2 * ceil32(return_data.size)) + 224]
            require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _97 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
            require return_data.size >= _82 + (32 * _97) + 32
            s = (2 * ceil32(return_data.size)) + _82 + 256
            t = (4 * ceil32(return_data.size)) + 256
            idx = 0
            while idx < _97:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if 0 >= _97:
                revert with 0, 50
            require ext_code.size(mem[(4 * ceil32(return_data.size)) + 268 len 20])
            staticcall mem[(4 * ceil32(return_data.size)) + 268 len 20].getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _517 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _520 = mem[_517]
            require mem[_517] == mem[_517 + 12 len 20]
            _523 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = arg1
            _527 = mem[64]
            mem[mem[64]] = 100
            mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
            mem[64] = mem[64] + 196
            mem[_523 + 132] = 32
            mem[_523 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            _548 = mem[_527]
            mem[_523 + 196 len ceil32(mem[_527])] = mem[_527 + 32 len ceil32(mem[_527])]
            if ceil32(_548) > _548:
                mem[_548 + _523 + 196] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args mem[_523 + 200 len _548 - 4]
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
                mem[_523 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_523 + 228] == bool(mem[_523 + 228])
                    if not mem[_523 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(_520))
            call address(_520).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg1, this.address, 188
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !(0 / ext_call.return_data[0] * arg1 / 10^18):
                revert with 0, 17
            totalSupply += 0 / ext_call.return_data[0] * arg1 / 10^18
            if balanceOf[address(arg2)] > !(0 / ext_call.return_data[0] * arg1 / 10^18):
                revert with 0, 17
            balanceOf[address(arg2)] += 0 / ext_call.return_data[0] * arg1 / 10^18
            emit Transfer((0 / ext_call.return_data[0] * arg1 / 10^18), 0, arg2);
            emit SuppliedTokenTo(0 / ext_call.return_data[0] * arg1 / 10^18, arg1, msg.sender, arg2);
        else:
            if totalSupply and 10^18 > -1 / totalSupply:
                revert with 0, 17
            if not totalSupply:
                revert with 0, 18
            if 10^18 * totalSupply / totalSupply != 10^18:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 96] = 26
            mem[ceil32(return_data.size) + 128] = 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if not 10^18 * totalSupply / ext_call.return_data[0]:
                revert with 0, 'ATokenYieldSource/shares-gt-zero'
            if 10^18 * totalSupply / ext_call.return_data[0] and arg1 > -1 / 10^18 * totalSupply / ext_call.return_data[0]:
                revert with 0, 17
            if not 10^18 * totalSupply / ext_call.return_data[0]:
                revert with 0, 18
            if 10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18 * totalSupply / ext_call.return_data[0] != arg1:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[ceil32(return_data.size) + 160] = 26
            mem[ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
            if 10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18 <= 0:
                revert with 0, 'ATokenYieldSource/shares-gt-zero'
            require ext_code.size(aTokenAddress)
            staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(2 * ceil32(return_data.size)) + 224] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_873ba41eAddress)
            staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            _116 = mem[(2 * ceil32(return_data.size)) + 224]
            require mem[(2 * ceil32(return_data.size)) + 224] <= test266151307()
            require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 255 < (2 * ceil32(return_data.size)) + return_data.size + 224
            _129 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224] > test266151307():
                revert with 0, 65
            if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 225 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]) + 225
            mem[(4 * ceil32(return_data.size)) + 224] = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224] + 224]
            require return_data.size >= _116 + (32 * _129) + 32
            s = (2 * ceil32(return_data.size)) + _116 + 256
            t = (4 * ceil32(return_data.size)) + 256
            idx = 0
            while idx < _129:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if 0 >= _129:
                revert with 0, 50
            require ext_code.size(mem[(4 * ceil32(return_data.size)) + 268 len 20])
            staticcall mem[(4 * ceil32(return_data.size)) + 268 len 20].getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _516 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _519 = mem[_516]
            require mem[_516] == mem[_516 + 12 len 20]
            _522 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = arg1
            _525 = mem[64]
            mem[mem[64]] = 100
            mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
            mem[64] = mem[64] + 196
            mem[_522 + 132] = 32
            mem[_522 + 164] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            _546 = mem[_525]
            mem[_522 + 196 len ceil32(mem[_525])] = mem[_525 + 32 len ceil32(mem[_525])]
            if ceil32(_546) > _546:
                mem[_546 + _522 + 196] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args mem[_522 + 200 len _546 - 4]
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
                mem[_522 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_522 + 228] == bool(mem[_522 + 228])
                    if not mem[_522 + 228]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            require ext_code.size(address(_519))
            call address(_519).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg1, this.address, 188
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not arg2:
                revert with 0, 'ERC20: mint to the zero address'
            if totalSupply > !(10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18):
                revert with 0, 17
            totalSupply += 10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18
            if balanceOf[address(arg2)] > !(10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18):
                revert with 0, 17
            balanceOf[address(arg2)] += 10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18
            emit Transfer((10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18), 0, arg2);
            emit SuppliedTokenTo(10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18, arg1, msg.sender, arg2);
    stor8 = 1
}

function redeemToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor8 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor8 = 2
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.UNDERLYING_ASSET_ADDRESS() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not totalSupply:
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(msg.sender)] < arg1:
            revert with 0, 'ERC20: burn amount exceeds balance'
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= arg1
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        emit Transfer(arg1, msg.sender, 0);
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(2 * ceil32(return_data.size)) + 96] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_873ba41eAddress)
        staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 96
        require return_data.size >= 32
        _37 = mem[(2 * ceil32(return_data.size)) + 96]
        require mem[(2 * ceil32(return_data.size)) + 96] <= test266151307()
        require (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 127 < (2 * ceil32(return_data.size)) + return_data.size + 96
        _39 = mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96] > test266151307():
            revert with 0, 65
        if (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 97 > test266151307() or ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 1 < 0:
            revert with 0, 65
        mem[64] = (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 96] + 96]) + 97
        mem[(4 * ceil32(return_data.size)) + 96] = _39
        require return_data.size >= _37 + (32 * _39) + 32
        s = (2 * ceil32(return_data.size)) + _37 + 128
        t = (4 * ceil32(return_data.size)) + 128
        idx = 0
        while idx < _39:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if 0 >= _39:
            revert with 0, 50
        require ext_code.size(mem[(4 * ceil32(return_data.size)) + 140 len 20])
        staticcall mem[(4 * ceil32(return_data.size)) + 140 len 20].getLendingPool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _708 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _713 = mem[_708]
        require mem[_708] == mem[_708 + 12 len 20]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(_713))
        call address(_713).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _748 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _753 = mem[_748]
        if mem[_748] < ext_call.return_data[0]:
            revert with 0, 17
        _758 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _753 - ext_call.return_data[0]
        _767 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_758 + 100] = 32
        mem[_758 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _802 = mem[_767]
        mem[_758 + 164 len ceil32(mem[_767])] = mem[_767 + 32 len ceil32(mem[_767])]
        if ceil32(_802) > _802:
            mem[_802 + _758 + 164] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_758 + 168 len _802 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_758 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_758 + 196] == bool(mem[_758 + 196])
                if not mem[_758 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RedeemedToken(arg1, arg1, msg.sender);
        stor8 = 1
        return (_753 - ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(aTokenAddress)
    staticcall aTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not totalSupply:
        mem[(2 * ceil32(return_data.size)) + 96] = 26
        mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / ext_call.return_data[0]:
            mem[(2 * ceil32(return_data.size)) + 160] = 26
            mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
            if not msg.sender:
                revert with 0, 'ERC20: burn from the zero address'
            if balanceOf[address(msg.sender)] < 0:
                revert with 0, 'ERC20: burn amount exceeds balance'
            mem[0] = msg.sender
            mem[32] = 0
            if totalSupply < 0:
                revert with 0, 17
            emit Transfer(0, msg.sender, 0);
            mem[(2 * ceil32(return_data.size)) + 228] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[(4 * ceil32(return_data.size)) + 224] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
            require ext_code.size(sub_873ba41eAddress)
            staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 224
            require return_data.size >= 32
            _113 = mem[(4 * ceil32(return_data.size)) + 224]
            require mem[(4 * ceil32(return_data.size)) + 224] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
            _120 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 1 < 0:
                revert with 0, 65
            mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 225
            mem[(6 * ceil32(return_data.size)) + 224] = _120
            require return_data.size >= _113 + (32 * _120) + 32
            s = (4 * ceil32(return_data.size)) + _113 + 256
            t = (6 * ceil32(return_data.size)) + 256
            idx = 0
            while idx < _120:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if 0 >= _120:
                revert with 0, 50
            require ext_code.size(mem[(6 * ceil32(return_data.size)) + 268 len 20])
            staticcall mem[(6 * ceil32(return_data.size)) + 268 len 20].getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _707 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _712 = mem[_707]
            require mem[_707] == mem[_707 + 12 len 20]
            mem[mem[64] + 36] = arg1
            mem[mem[64] + 68] = this.address
            require ext_code.size(address(_712))
            call address(_712).withdraw(address arg1, uint256 arg2, address arg3) with:
                 gas gas_remaining wei
                args address(ext_call.return_data[0]), arg1, this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _747 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _752 = mem[_747]
            if mem[_747] < ext_call.return_data[0]:
                revert with 0, 17
            _757 = mem[64]
            mem[mem[64] + 36] = msg.sender
            mem[mem[64] + 68] = _752 - ext_call.return_data[0]
            _765 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_757 + 100] = 32
            mem[_757 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            _800 = mem[_765]
            mem[_757 + 164 len ceil32(mem[_765])] = mem[_765 + 32 len ceil32(mem[_765])]
            if ceil32(_800) > _800:
                mem[_800 + _757 + 164] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args mem[_757 + 168 len _800 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0]:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0]:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[_757 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_757 + 196] == bool(mem[_757 + 196])
                    if not mem[_757 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RedeemedToken(0, arg1, msg.sender);
            stor8 = 1
            return (_752 - ext_call.return_data[0])
        if 0 / ext_call.return_data[0] and arg1 > -1 / 0 / ext_call.return_data[0]:
            revert with 0, 17
        if not 0 / ext_call.return_data[0]:
            revert with 0, 18
        if 0 / ext_call.return_data[0] * arg1 / 0 / ext_call.return_data[0] != arg1:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[(2 * ceil32(return_data.size)) + 160] = 26
        mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(msg.sender)] < 0 / ext_call.return_data[0] * arg1 / 10^18:
            revert with 0, 'ERC20: burn amount exceeds balance'
        mem[0] = msg.sender
        mem[32] = 0
        balanceOf[address(msg.sender)] -= 0 / ext_call.return_data[0] * arg1 / 10^18
        if totalSupply < 0 / ext_call.return_data[0] * arg1 / 10^18:
            revert with 0, 17
        totalSupply -= 0 / ext_call.return_data[0] * arg1 / 10^18
        emit Transfer((0 / ext_call.return_data[0] * arg1 / 10^18), msg.sender, 0);
        mem[(2 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 224] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_873ba41eAddress)
        staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _130 = mem[(4 * ceil32(return_data.size)) + 224]
        require mem[(4 * ceil32(return_data.size)) + 224] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
        _135 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 225
        mem[(6 * ceil32(return_data.size)) + 224] = _135
        require return_data.size >= _130 + (32 * _135) + 32
        s = (4 * ceil32(return_data.size)) + _130 + 256
        t = (6 * ceil32(return_data.size)) + 256
        idx = 0
        while idx < _135:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if 0 >= _135:
            revert with 0, 50
        require ext_code.size(mem[(6 * ceil32(return_data.size)) + 268 len 20])
        staticcall mem[(6 * ceil32(return_data.size)) + 268 len 20].getLendingPool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _706 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _711 = mem[_706]
        require mem[_706] == mem[_706 + 12 len 20]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(_711))
        call address(_711).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _746 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _751 = mem[_746]
        if mem[_746] < ext_call.return_data[0]:
            revert with 0, 17
        _756 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _751 - ext_call.return_data[0]
        _763 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_756 + 100] = 32
        mem[_756 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _798 = mem[_763]
        mem[_756 + 164 len ceil32(mem[_763])] = mem[_763 + 32 len ceil32(mem[_763])]
        if ceil32(_798) > _798:
            mem[_798 + _756 + 164] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_756 + 168 len _798 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_756 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_756 + 196] == bool(mem[_756 + 196])
                if not mem[_756 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RedeemedToken(0 / ext_call.return_data[0] * arg1 / 10^18, arg1, msg.sender);
        stor8 = 1
        return (_751 - ext_call.return_data[0])
    if totalSupply and 10^18 > -1 / totalSupply:
        revert with 0, 17
    if not totalSupply:
        revert with 0, 18
    if 10^18 * totalSupply / totalSupply != 10^18:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(2 * ceil32(return_data.size)) + 96] = 26
    mem[(2 * ceil32(return_data.size)) + 128] = 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if not 10^18 * totalSupply / ext_call.return_data[0]:
        mem[(2 * ceil32(return_data.size)) + 160] = 26
        mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
        if not msg.sender:
            revert with 0, 'ERC20: burn from the zero address'
        if balanceOf[address(msg.sender)] < 0:
            revert with 0, 'ERC20: burn amount exceeds balance'
        mem[0] = msg.sender
        mem[32] = 0
        if totalSupply < 0:
            revert with 0, 17
        emit Transfer(0, msg.sender, 0);
        mem[(2 * ceil32(return_data.size)) + 228] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(4 * ceil32(return_data.size)) + 224] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_873ba41eAddress)
        staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _129 = mem[(4 * ceil32(return_data.size)) + 224]
        require mem[(4 * ceil32(return_data.size)) + 224] <= test266151307()
        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
        _134 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]
        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224] > test266151307():
            revert with 0, 65
        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 1 < 0:
            revert with 0, 65
        mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 225
        mem[(6 * ceil32(return_data.size)) + 224] = _134
        require return_data.size >= _129 + (32 * _134) + 32
        s = (4 * ceil32(return_data.size)) + _129 + 256
        t = (6 * ceil32(return_data.size)) + 256
        idx = 0
        while idx < _134:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if 0 >= _134:
            revert with 0, 50
        require ext_code.size(mem[(6 * ceil32(return_data.size)) + 268 len 20])
        staticcall mem[(6 * ceil32(return_data.size)) + 268 len 20].getLendingPool() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _705 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _710 = mem[_705]
        require mem[_705] == mem[_705 + 12 len 20]
        mem[mem[64] + 36] = arg1
        mem[mem[64] + 68] = this.address
        require ext_code.size(address(_710))
        call address(_710).withdraw(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[mem[64] + 4] = this.address
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _745 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _750 = mem[_745]
        if mem[_745] < ext_call.return_data[0]:
            revert with 0, 17
        _755 = mem[64]
        mem[mem[64] + 36] = msg.sender
        mem[mem[64] + 68] = _750 - ext_call.return_data[0]
        _761 = mem[64]
        mem[mem[64]] = 68
        mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
        mem[64] = mem[64] + 164
        mem[_755 + 100] = 32
        mem[_755 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        _796 = mem[_761]
        mem[_755 + 164 len ceil32(mem[_761])] = mem[_761 + 32 len ceil32(mem[_761])]
        if ceil32(_796) > _796:
            mem[_796 + _755 + 164] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args mem[_755 + 168 len _796 - 4]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_755 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[_755 + 196] == bool(mem[_755 + 196])
                if not mem[_755 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RedeemedToken(0, arg1, msg.sender);
        stor8 = 1
        return (_750 - ext_call.return_data[0])
    if 10^18 * totalSupply / ext_call.return_data[0] and arg1 > -1 / 10^18 * totalSupply / ext_call.return_data[0]:
        revert with 0, 17
    if not 10^18 * totalSupply / ext_call.return_data[0]:
        revert with 0, 18
    if 10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18 * totalSupply / ext_call.return_data[0] != arg1:
        revert with 0, 'SafeMath: multiplication overflow'
    mem[(2 * ceil32(return_data.size)) + 160] = 26
    mem[(2 * ceil32(return_data.size)) + 192] = 'SafeMath: division by zero'
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < 10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18:
        revert with 0, 'ERC20: burn amount exceeds balance'
    mem[0] = msg.sender
    mem[32] = 0
    balanceOf[address(msg.sender)] -= 10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18
    if totalSupply < 10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18:
        revert with 0, 17
    totalSupply -= 10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18
    emit Transfer((10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18), msg.sender, 0);
    mem[(2 * ceil32(return_data.size)) + 228] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(4 * ceil32(return_data.size)) + 224] = 0x365ccbbf00000000000000000000000000000000000000000000000000000000
    require ext_code.size(sub_873ba41eAddress)
    staticcall sub_873ba41eAddress.getAddressesProvidersList() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 224
    require return_data.size >= 32
    _150 = mem[(4 * ceil32(return_data.size)) + 224]
    require mem[(4 * ceil32(return_data.size)) + 224] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 255 < (4 * ceil32(return_data.size)) + return_data.size + 224
    _152 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224] > test266151307():
        revert with 0, 65
    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 225 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 1 < 0:
        revert with 0, 65
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 224] + 224]) + 225
    mem[(6 * ceil32(return_data.size)) + 224] = _152
    require return_data.size >= _150 + (32 * _152) + 32
    s = (4 * ceil32(return_data.size)) + _150 + 256
    t = (6 * ceil32(return_data.size)) + 256
    idx = 0
    while idx < _152:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if 0 >= _152:
        revert with 0, 50
    require ext_code.size(mem[(6 * ceil32(return_data.size)) + 268 len 20])
    staticcall mem[(6 * ceil32(return_data.size)) + 268 len 20].getLendingPool() with:
            gas gas_remaining wei
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _704 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _709 = mem[_704]
    require mem[_704] == mem[_704 + 12 len 20]
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = this.address
    require ext_code.size(address(_709))
    call address(_709).withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), arg1, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _744 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _749 = mem[_744]
    if mem[_744] < ext_call.return_data[0]:
        revert with 0, 17
    _754 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = _749 - ext_call.return_data[0]
    _759 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
    mem[64] = mem[64] + 164
    mem[_754 + 100] = 32
    mem[_754 + 132] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    _794 = mem[_759]
    mem[_754 + 164 len ceil32(mem[_759])] = mem[_759 + 32 len ceil32(mem[_759])]
    if ceil32(_794) > _794:
        mem[_794 + _754 + 164] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args mem[_754 + 168 len _794 - 4]
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_754 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_754 + 196] == bool(mem[_754 + 196])
            if not mem[_754 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit RedeemedToken(10^18 * totalSupply / ext_call.return_data[0] * arg1 / 10^18, arg1, msg.sender);
    stor8 = 1
    return (_749 - ext_call.return_data[0])
}



}
