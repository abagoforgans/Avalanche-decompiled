contract main {




// =====================  Runtime code  =====================


#
#  - closePositions()
#
const BASE = 10000


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 stor6;
address owner;
array of struct actions;
address sub_38d96a74Address;
address sub_986620e6Address;
address underlyingAddress;
uint256 cap;
uint256 sub_78922c8f;
uint256 withdrawReserve;
uint256 performanceFeePercentage;
mapping of uint256 sub_06b1531e;
uint8 state;
uint8 sub_8d64fd60; offset 8
uint256 stor17; offset 8

function sub_06b1531e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return sub_06b1531e[arg1][arg2]
}

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function cap() payable {
    return cap
}

function sub_38d96a74(?) payable {
    return sub_38d96a74Address
}

function underlying() payable {
    return underlyingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_78922c8f(?) payable {
    return sub_78922c8f
}

function sub_7ec29eec(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_06b1531e[address(arg1)][stor11]
}

function actions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < actions.length
    return actions[arg1].field_0
}

function sub_8d64fd60(?) payable {
    require sub_8d64fd60 < 3
    return sub_8d64fd60
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_986620e6(?) payable {
    return sub_986620e6Address
}

function withdrawReserve() payable {
    return withdrawReserve
}

function state() payable {
    require state < 3
    return state
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function performanceFeePercentage() payable {
    return performanceFeePercentage
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_e0583f2e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    performanceFeePercentage = arg1
}

function setCap(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    cap = arg1
    emit CapUpdated(arg1);
}

function setWithdrawalFeePercentage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_78922c8f = arg1
}

function sub_6a5f1aa2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_986620e6Address = address(arg1)
}

function setWithdrawalFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_38d96a74Address = arg1
}

function setWithdrawReserve(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 >= 5000:
        revert with 0, 'O16'
    withdrawReserve = arg1
}

function setFeeRecipient(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_38d96a74Address = arg1
    sub_986620e6Address = arg1
}

function emergencyPause() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require state <= 2
    if not state:
        revert with 0, 'O17'
    require state <= 2
    stor17 = state
    state = 0
    emit 0x6523ad33: 0
}

function resumeFromPause() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require state <= 2
    if state:
        revert with 0, 'O18'
    require sub_8d64fd60 <= 2
    state = sub_8d64fd60
    require sub_8d64fd60 < 3
    emit 0x6523ad33: sub_8d64fd60
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_ddfa63ae(?) payable {
    mem[64] = 96
    idx = 0
    s = 0
    while idx < actions.length:
        mem[0] = 8
        require ext_code.size(actions[idx].field_0)
        staticcall actions[idx].field_0.currentValue() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_21] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_21] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _22 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if (_23 * actions.length) + mem[_22] < mem[_22]:
        revert with 0, 'SafeMath: addition overflow'
    mem[mem[64]] = (_23 * actions.length) + mem[_22]
    return memory
      from mem[64]
       len 32
}

function sub_cd366692(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 <= test266151307() and (32 * ('cd', 4).length) + 128 >= 96
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    s = cd[4] + 36
    t = 128
    idx = 0
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if actions.length:
        revert with 0, 'O3'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 4).length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'O4'
        s = 0
        while s < idx:
            require s < ('cd', 4).length
            require idx < ('cd', 4).length
            if mem[(32 * idx) + 140 len 20] == mem[(32 * s) + 140 len 20]:
                revert with 0, 'O5'
            s = s + 1
            continue 
        require idx < ('cd', 4).length
        actions.length++
        mem[0] = 8
        actions[actions.length].field_0 = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7345524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 
                    32,
                    38,
                    0x7345524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                    mem[166 len 26],
                    mem[218 len 6]
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 
                    32,
                    40,
                    0x7745524332303a207472616e7366657220616d6f756e74206578636565647320616c6c6f77616e63,
                    mem[264 len 24],
                    mem[312 len 8]
    if not arg1:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[392 len 28]
    if not msg.sender:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[390 len 30]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function getSharesByDepositAmount(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < actions.length:
        mem[0] = 8
        require ext_code.size(actions[idx].field_0)
        staticcall actions[idx].field_0.currentValue() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_31] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_31] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _32 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if (_33 * actions.length) + mem[_32] < mem[_32]:
        revert with 0, 'SafeMath: addition overflow'
    if not totalSupply:
        return arg1
    if not arg1:
        if (_33 * actions.length) + mem[_32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (_33 * actions.length) + mem[_32]
        mem[mem[64]] = 0 / (_33 * actions.length) + mem[_32]
    else:
        if totalSupply * arg1 / arg1 != totalSupply:
            revert with 0, 32, 33, 0x87536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if (_33 * actions.length) + mem[_32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require (_33 * actions.length) + mem[_32]
        mem[mem[64]] = totalSupply * arg1 / (_33 * actions.length) + mem[_32]
    return memory
      from mem[64]
       len 32
}

function getWithdrawAmountByShares(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < actions.length:
        mem[0] = 8
        require ext_code.size(actions[idx].field_0)
        staticcall actions[idx].field_0.currentValue() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_45] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_45] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _46 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if (_47 * actions.length) + mem[_46] < mem[_46]:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not 0 / totalSupply:
            if 0 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return (0 / totalSupply)
        if sub_78922c8f * 0 / totalSupply / 0 / totalSupply != sub_78922c8f:
            revert with 0, 32, 33, 0x87536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if sub_78922c8f * 0 / totalSupply / 10000 > 0 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000))
    if (_47 * actions.length * arg1) + (mem[_46] * arg1) / arg1 != (_47 * actions.length) + mem[_46]:
        revert with 0, 32, 33, 0x87536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalSupply
    if not (_47 * actions.length * arg1) + (mem[_46] * arg1) / totalSupply:
        if 0 > (_47 * actions.length * arg1) + (mem[_46] * arg1) / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64]] = (_47 * actions.length * arg1) + (mem[_46] * arg1) / totalSupply
    else:
        if sub_78922c8f * (_47 * actions.length * arg1) + (mem[_46] * arg1) / totalSupply / (_47 * actions.length * arg1) + (mem[_46] * arg1) / totalSupply != sub_78922c8f:
            revert with 0, 32, 33, 0x87536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if sub_78922c8f * (_47 * actions.length * arg1) + (mem[_46] * arg1) / totalSupply / 10000 > (_47 * actions.length * arg1) + (mem[_46] * arg1) / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[mem[64]] = ((_47 * actions.length * arg1) + (mem[_46] * arg1) / totalSupply) - (sub_78922c8f * (_47 * actions.length * arg1) + (mem[_46] * arg1) / totalSupply / 10000)
    return memory
      from mem[64]
       len 32
}

function depositUnderlying(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require state <= 2
    if not state:
        revert with 0, 'O2'
    if not actions.length:
        revert with 0, 'O1'
    if arg1 <= 0:
        revert with 0, 'O6'
    idx = 0
    s = 0
    while idx < actions.length:
        mem[0] = 8
        require ext_code.size(actions[idx].field_0)
        staticcall actions[idx].field_0.currentValue() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _320 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_320] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_320] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _321 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _323 = mem[_321]
    if (_322 * actions.length) + mem[_321] < mem[_321]:
        revert with 0, 'SafeMath: addition overflow'
    _328 = mem[64]
    mem[mem[64] + 36] = msg.sender
    mem[mem[64] + 68] = this.address
    mem[mem[64] + 100] = arg1
    _329 = mem[64]
    mem[mem[64]] = 100
    mem[mem[64] + 32 len 4] = unknown_0x23b872dd(?????)
    mem[64] = mem[64] + 196
    mem[_328 + 132] = 32
    mem[_328 + 164] = 'SafeERC20: low-level call failed'
    if not ext_code.size(underlyingAddress):
        revert with 0, 'Address: call to non-contract'
    _333 = mem[_329]
    mem[_328 + 196 len floor32(mem[_329])] = mem[_329 + 32 len floor32(mem[_329])]
    mem[_328 + floor32(mem[_329]) + -(mem[_329] % 32) + 228 len mem[_329] % 32] = mem[_329 + floor32(mem[_329]) + -(mem[_329] % 32) + 64 len mem[_329] % 32]
    call underlyingAddress with:
         gas gas_remaining wei
        args mem[_328 + 200 len _333 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if not mem[96]:
            idx = 0
            s = 0
            while idx < actions.length:
                mem[0] = 8
                require ext_code.size(actions[idx].field_0)
                staticcall actions[idx].field_0.currentValue() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _931 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _939 = mem[_931]
                if mem[_931] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_931] + s
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _938 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if (_939 * actions.length) + mem[_938] < mem[_938]:
                revert with 0, 'SafeMath: addition overflow'
            if (_939 * actions.length) + mem[_938] >= cap:
                revert with 0, 'O7'
            if (_322 * actions.length) + _323 > (_939 * actions.length) + mem[_938]:
                revert with 0, 'SafeMath: subtraction overflow'
            if (_939 * actions.length) + mem[_938] - (_322 * actions.length) - _323 != arg1:
                revert with 0, 'O19'
        else:
            require mem[96] >= 32
            if not mem[128]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_328 + 306 len 22]
            idx = 0
            s = 0
            while idx < actions.length:
                mem[0] = 8
                require ext_code.size(actions[idx].field_0)
                staticcall actions[idx].field_0.currentValue() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _933 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _941 = mem[_933]
                if mem[_933] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_933] + s
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _940 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if (_941 * actions.length) + mem[_940] < mem[_940]:
                revert with 0, 'SafeMath: addition overflow'
            if (_941 * actions.length) + mem[_940] >= cap:
                revert with 0, 'O7'
            if (_322 * actions.length) + _323 > (_941 * actions.length) + mem[_940]:
                revert with 0, 'SafeMath: subtraction overflow'
            if (_941 * actions.length) + mem[_940] - (_322 * actions.length) - _323 != arg1:
                revert with 0, 'O19'
    else:
        mem[64] = _328 + ceil32(return_data.size) + 197
        mem[_328 + 196] = return_data.size
        mem[_328 + 228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if not return_data.size:
            idx = 0
            s = 0
            while idx < actions.length:
                mem[0] = 8
                require ext_code.size(actions[idx].field_0)
                staticcall actions[idx].field_0.currentValue() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _935 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _943 = mem[_935]
                if mem[_935] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_935] + s
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _942 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if (_943 * actions.length) + mem[_942] < mem[_942]:
                revert with 0, 'SafeMath: addition overflow'
            if (_943 * actions.length) + mem[_942] >= cap:
                revert with 0, 'O7'
            if (_322 * actions.length) + _323 > (_943 * actions.length) + mem[_942]:
                revert with 0, 'SafeMath: subtraction overflow'
            if (_943 * actions.length) + mem[_942] - (_322 * actions.length) - _323 != arg1:
                revert with 0, 'O19'
        else:
            require return_data.size >= 32
            if not mem[_328 + 228]:
                revert with 0, 
                            32,
                            42,
                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[_328 + ceil32(return_data.size) + 307 len 22]
            idx = 0
            s = 0
            while idx < actions.length:
                mem[0] = 8
                require ext_code.size(actions[idx].field_0)
                staticcall actions[idx].field_0.currentValue() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _937 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _945 = mem[_937]
                if mem[_937] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[_937] + s
                continue 
            mem[mem[64] + 4] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _944 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if (_945 * actions.length) + mem[_944] < mem[_944]:
                revert with 0, 'SafeMath: addition overflow'
            if (_945 * actions.length) + mem[_944] >= cap:
                revert with 0, 'O7'
            if (_322 * actions.length) + _323 > (_945 * actions.length) + mem[_944]:
                revert with 0, 'SafeMath: subtraction overflow'
            if (_945 * actions.length) + mem[_944] - (_322 * actions.length) - _323 != arg1:
                revert with 0, 'O19'
    if not totalSupply:
        emit Deposit(msg.sender, arg1, arg1);
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if arg1 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if arg1 + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        emit Transfer(arg1, 0, msg.sender);
    else:
        if not arg1:
            if (_322 * actions.length) + _323 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (_322 * actions.length) + _323
            emit Deposit(msg.sender, arg1, 0 / (_322 * actions.length) + _323);
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (0 / (_322 * actions.length) + _323) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += 0 / (_322 * actions.length) + _323
            if (0 / (_322 * actions.length) + _323) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += 0 / (_322 * actions.length) + _323
            emit Transfer((0 / (_322 * actions.length) + _323), 0, msg.sender);
        else:
            if totalSupply * arg1 / arg1 != totalSupply:
                revert with 0, 32, 33, 0x87536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if (_322 * actions.length) + _323 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require (_322 * actions.length) + _323
            emit Deposit(msg.sender, arg1, totalSupply * arg1 / (_322 * actions.length) + _323);
            if not msg.sender:
                revert with 0, 'ERC20: mint to the zero address'
            if (totalSupply * arg1 / (_322 * actions.length) + _323) + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += totalSupply * arg1 / (_322 * actions.length) + _323
            if (totalSupply * arg1 / (_322 * actions.length) + _323) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += totalSupply * arg1 / (_322 * actions.length) + _323
            emit Transfer((totalSupply * arg1 / (_322 * actions.length) + _323), 0, msg.sender);
    stor6 = 1
}

function sub_2c507048(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if not actions.length:
        revert with 0, 'O1'
    if ('cd', 4).length != actions.length:
        revert with 0, 'O12'
    require state <= 2
    if state != 2:
        revert with 0, 'O13'
    state = 1
    mem[64] = (32 * actions.length) + 128
    mem[96] = actions.length
    if not actions.length:
        idx = 0
        s = 0
        while idx < actions.length:
            mem[0] = 8
            require ext_code.size(actions[idx].field_0)
            staticcall actions[idx].field_0.currentValue() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _138 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_138] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_138] + s
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _139 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _141 = mem[_139]
        if (_140 * actions.length) + mem[_139] < mem[_139]:
            revert with 0, 'SafeMath: addition overflow'
        idx = 0
        s = withdrawReserve
        while idx < ('cd', 4).length:
            if cd[((32 * idx) + cd[4] + 36)] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            if cd[((32 * idx) + cd[4] + 36)] + s > 10000:
                revert with 0, 'O14'
            require idx < ('cd', 4).length
            if not (_140 * actions.length) + _141:
                require idx < mem[96]
                _281 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_281))
                call address(_281).rolloverPosition() with:
                     gas gas_remaining wei
            else:
                if (_140 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_141 * cd[((32 * idx) + cd[4] + 36)]) / (_140 * actions.length) + _141 != cd[((32 * idx) + cd[4] + 36)]:
                    revert with 0, 32, 33, 0x87536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < mem[96]
                if not (_140 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_141 * cd[((32 * idx) + cd[4] + 36)]) / 10000:
                    _284 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_284))
                    call address(_284).rolloverPosition() with:
                         gas gas_remaining wei
                else:
                    _288 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 68] = (_140 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_141 * cd[((32 * idx) + cd[4] + 36)]) / 10000
                    _289 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_289 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_289 + 36 len 28]
                    mem[64] = _288 + 164
                    mem[_288 + 100] = 32
                    mem[_288 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _303 = mem[_289]
                    u = _289 + 32
                    v = _288 + 164
                    t = mem[_289]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_288 + floor32(mem[_289]) + 164] = mem[_289 + -(mem[_289] % 32) + floor32(mem[_289]) + 64 len mem[_289] % 32] or Mask(8 * -(mem[_289] % 32) + 32, -(8 * -(mem[_289] % 32) + 32) + 256, mem[_288 + floor32(mem[_289]) + 164])
                    call underlyingAddress.mem[_288 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_288 + 168 len _303 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_288 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_288 + 168] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _288 + 232] = mem[idx + _288 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_288 + 132]
                        if not mem[96]:
                            require idx < mem[96]
                            mem[0] = underlyingAddress
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 16)
                            sub_06b1531e[mem[(32 * idx) + 140 len 20]][stor11] = (_140 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_141 * cd[((32 * idx) + cd[4] + 36)]) / 10000
                            require idx < mem[96]
                            _540 = mem[(32 * idx) + 128]
                            mem[_288 + 164] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_540))
                            call address(_540).rolloverPosition() with:
                                 gas gas_remaining wei
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_288 + 274 len 22]
                            require idx < mem[96]
                            mem[0] = underlyingAddress
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 16)
                            sub_06b1531e[mem[(32 * idx) + 140 len 20]][stor11] = (_140 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_141 * cd[((32 * idx) + cd[4] + 36)]) / 10000
                            require idx < mem[96]
                            _554 = mem[(32 * idx) + 128]
                            mem[_288 + 164] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_554))
                            call address(_554).rolloverPosition() with:
                                 gas gas_remaining wei
                    else:
                        mem[64] = _288 + ceil32(return_data.size) + 165
                        mem[_288 + 164] = return_data.size
                        mem[_288 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_288 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_288 + ceil32(return_data.size) + 169] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _288 + ceil32(return_data.size) + 233] = mem[idx + _288 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_288 + 132]
                        if not return_data.size:
                            require idx < mem[96]
                            mem[0] = underlyingAddress
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 16)
                            sub_06b1531e[mem[(32 * idx) + 140 len 20]][stor11] = (_140 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_141 * cd[((32 * idx) + cd[4] + 36)]) / 10000
                            require idx < mem[96]
                            _546 = mem[(32 * idx) + 128]
                            mem[_288 + ceil32(return_data.size) + 165] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_546))
                            call address(_546).rolloverPosition() with:
                                 gas gas_remaining wei
                        else:
                            require return_data.size >= 32
                            if not mem[_288 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_288 + ceil32(return_data.size) + 275 len 22]
                            require idx < mem[96]
                            mem[0] = underlyingAddress
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 16)
                            sub_06b1531e[mem[(32 * idx) + 140 len 20]][stor11] = (_140 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_141 * cd[((32 * idx) + cd[4] + 36)]) / 10000
                            require idx < mem[96]
                            _557 = mem[(32 * idx) + 128]
                            mem[_288 + ceil32(return_data.size) + 165] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_557))
                            call address(_557).rolloverPosition() with:
                                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = cd[((32 * idx) + cd[4] + 36)] + s
            continue 
        if s != 10000:
            revert with 0, 'O15'
        _251 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = ('cd', 4).length
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 64 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + mem[64] + 64] = 0
        emit Rollover(mem[mem[64] len (32 * ('cd', 4).length) + _251 + -mem[64] + 64]);
    else:
        mem[0] = 8
        mem[128] = address(actions.field_0)
        idx = 128
        s = 0
        while (32 * actions.length) + 96 > idx:
            mem[idx + 32] = actions[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        idx = 0
        s = 0
        while idx < actions.length:
            mem[0] = 8
            require ext_code.size(actions[idx].field_0)
            staticcall actions[idx].field_0.currentValue() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _484 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _496 = mem[_484]
            if mem[_484] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = mem[_484] + s
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args address(this.address)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _495 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _503 = mem[_495]
        if (_496 * actions.length) + mem[_495] < mem[_495]:
            revert with 0, 'SafeMath: addition overflow'
        idx = 0
        s = withdrawReserve
        while idx < ('cd', 4).length:
            if cd[((32 * idx) + cd[4] + 36)] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            if cd[((32 * idx) + cd[4] + 36)] + s > 10000:
                revert with 0, 'O14'
            require idx < ('cd', 4).length
            if not (_496 * actions.length) + _503:
                require idx < mem[96]
                _690 = mem[(32 * idx) + 128]
                mem[mem[64]] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                require ext_code.size(address(_690))
                call address(_690).rolloverPosition() with:
                     gas gas_remaining wei
            else:
                if (_496 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_503 * cd[((32 * idx) + cd[4] + 36)]) / (_496 * actions.length) + _503 != cd[((32 * idx) + cd[4] + 36)]:
                    revert with 0, 32, 33, 0x87536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < mem[96]
                if not (_496 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_503 * cd[((32 * idx) + cd[4] + 36)]) / 10000:
                    _693 = mem[(32 * idx) + 128]
                    mem[mem[64]] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                    require ext_code.size(address(_693))
                    call address(_693).rolloverPosition() with:
                         gas gas_remaining wei
                else:
                    _697 = mem[64]
                    mem[mem[64] + 36] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64] + 68] = (_496 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_503 * cd[((32 * idx) + cd[4] + 36)]) / 10000
                    _698 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_698 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_698 + 36 len 28]
                    mem[64] = _697 + 164
                    mem[_697 + 100] = 32
                    mem[_697 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    _702 = mem[_698]
                    u = _698 + 32
                    v = _697 + 164
                    t = mem[_698]
                    while t >= 32:
                        mem[v] = mem[u]
                        u = u + 32
                        v = v + 32
                        t = t - 32
                        continue 
                    mem[_697 + floor32(mem[_698]) + 164] = mem[_698 + -(mem[_698] % 32) + floor32(mem[_698]) + 64 len mem[_698] % 32] or Mask(8 * -(mem[_698] % 32) + 32, -(8 * -(mem[_698] % 32) + 32) + 256, mem[_697 + floor32(mem[_698]) + 164])
                    call underlyingAddress.mem[_697 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_697 + 168 len _702 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_697 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_697 + 168] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _697 + 232] = mem[idx + _697 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_697 + 132]
                        if not mem[96]:
                            require idx < mem[96]
                            mem[0] = underlyingAddress
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 16)
                            sub_06b1531e[mem[(32 * idx) + 140 len 20]][stor11] = (_496 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_503 * cd[((32 * idx) + cd[4] + 36)]) / 10000
                            require idx < mem[96]
                            _831 = mem[(32 * idx) + 128]
                            mem[_697 + 164] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_831))
                            call address(_831).rolloverPosition() with:
                                 gas gas_remaining wei
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_697 + 274 len 22]
                            require idx < mem[96]
                            mem[0] = underlyingAddress
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 16)
                            sub_06b1531e[mem[(32 * idx) + 140 len 20]][stor11] = (_496 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_503 * cd[((32 * idx) + cd[4] + 36)]) / 10000
                            require idx < mem[96]
                            _845 = mem[(32 * idx) + 128]
                            mem[_697 + 164] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_845))
                            call address(_845).rolloverPosition() with:
                                 gas gas_remaining wei
                    else:
                        mem[64] = _697 + ceil32(return_data.size) + 165
                        mem[_697 + 164] = return_data.size
                        mem[_697 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_697 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_697 + ceil32(return_data.size) + 169] = 32
                            idx = 32
                            while idx < 32:
                                mem[idx + _697 + ceil32(return_data.size) + 233] = mem[idx + _697 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_697 + 132]
                        if not return_data.size:
                            require idx < mem[96]
                            mem[0] = underlyingAddress
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 16)
                            sub_06b1531e[mem[(32 * idx) + 140 len 20]][stor11] = (_496 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_503 * cd[((32 * idx) + cd[4] + 36)]) / 10000
                            require idx < mem[96]
                            _837 = mem[(32 * idx) + 128]
                            mem[_697 + ceil32(return_data.size) + 165] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_837))
                            call address(_837).rolloverPosition() with:
                                 gas gas_remaining wei
                        else:
                            require return_data.size >= 32
                            if not mem[_697 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_697 + ceil32(return_data.size) + 275 len 22]
                            require idx < mem[96]
                            mem[0] = underlyingAddress
                            mem[32] = sha3(mem[(32 * idx) + 140 len 20], 16)
                            sub_06b1531e[mem[(32 * idx) + 140 len 20]][stor11] = (_496 * actions.length * cd[((32 * idx) + cd[4] + 36)]) + (_503 * cd[((32 * idx) + cd[4] + 36)]) / 10000
                            require idx < mem[96]
                            _848 = mem[(32 * idx) + 128]
                            mem[_697 + ceil32(return_data.size) + 165] = 0xfcbbccb000000000000000000000000000000000000000000000000000000000
                            require ext_code.size(address(_848))
                            call address(_848).rolloverPosition() with:
                                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = cd[((32 * idx) + cd[4] + 36)] + s
            continue 
        if s != 10000:
            revert with 0, 'O15'
        _671 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = ('cd', 4).length
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 64 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[(32 * ('cd', 4).length) + mem[64] + 64] = 0
        emit Rollover(mem[mem[64] len (32 * ('cd', 4).length) + _671 + -mem[64] + 64]);
    emit 0x6523ad33: 1
    stor6 = 1
}

function withdrawUnderlying(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require state <= 2
    if not state:
        revert with 0, 'O2'
    if not actions.length:
        revert with 0, 'O1'
    idx = 0
    s = 0
    while idx < actions.length:
        mem[0] = 8
        require ext_code.size(actions[idx].field_0)
        staticcall actions[idx].field_0.currentValue() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _2372 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_2372] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_2372] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _2373 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _2375 = mem[_2373]
    if (_2374 * actions.length) + mem[_2373] < mem[_2373]:
        revert with 0, 'SafeMath: addition overflow'
    idx = 0
    s = 0
    while idx < actions.length:
        mem[0] = 8
        require ext_code.size(actions[idx].field_0)
        staticcall actions[idx].field_0.currentValue() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _4732 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _4734 = mem[_4732]
        if mem[_4732] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = mem[_4732] + s
        continue 
    mem[mem[64] + 4] = this.address
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args address(this.address)
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _4733 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _4735 = mem[_4733]
    if (_4734 * actions.length) + mem[_4733] < mem[_4733]:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if 0 / totalSupply:
            if sub_78922c8f * 0 / totalSupply / 0 / totalSupply != sub_78922c8f:
                revert with 0, 32, 33, 0x87536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if sub_78922c8f * 0 / totalSupply / 10000 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4768 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 0 / totalSupply > mem[_4768]:
                revert with 0, 'O8'
            if not msg.sender:
                revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
            _4794 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4794] = 34
            mem[_4794 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(msg.sender)]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 34
                mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_4794 + 66 len 30]
                mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                revert with 0, 32, 34, mem[mem[64] + 68 len 64]
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            _4852 = mem[64]
            mem[mem[64] + 36] = sub_38d96a74Address
            mem[mem[64] + 68] = sub_78922c8f * 0 / totalSupply / 10000
            _4853 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_4852 + 100] = 32
            mem[_4852 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            _4871 = mem[_4853]
            mem[_4852 + 164 len floor32(mem[_4853])] = mem[_4853 + 32 len floor32(mem[_4853])]
            mem[_4852 + floor32(mem[_4853]) + -(mem[_4853] % 32) + 196 len mem[_4853] % 32] = mem[_4853 + floor32(mem[_4853]) + -(mem[_4853] % 32) + 64 len mem[_4853] % 32]
            call underlyingAddress with:
                 gas gas_remaining wei
                args mem[_4852 + 168 len _4871 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not mem[96]:
                    emit FeeSent(sub_78922c8f * 0 / totalSupply / 10000, sub_38d96a74Address);
                    mem[_4852 + 200] = msg.sender
                    mem[_4852 + 232] = (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000)
                    mem[_4852 + 164] = 68
                    mem[_4852 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4852 + 328
                    mem[_4852 + 264] = 32
                    mem[_4852 + 296] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4852 + 328 len 64] = 0, msg.sender, Mask(224, 32, (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000)) >> 32
                    mem[_4852 + 420 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000), 0, mem[_4852 + 392 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11639 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11767 = mem[_11639]
                                if mem[_11639] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11639] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11766 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11767 * actions.length) + mem[_11766] < mem[_11766]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11767 * actions.length) + mem[_11766] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11767 * actions.length) - mem[_11766] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4852 + 438 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11641 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11769 = mem[_11641]
                                if mem[_11641] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11641] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11768 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11769 * actions.length) + mem[_11768] < mem[_11768]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11769 * actions.length) + mem[_11768] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11769 * actions.length) - mem[_11768] != 0 / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4852 + ceil32(return_data.size) + 329
                        mem[_4852 + 328] = return_data.size
                        mem[_4852 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11643 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11771 = mem[_11643]
                                if mem[_11643] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11643] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11770 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11771 * actions.length) + mem[_11770] < mem[_11770]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11771 * actions.length) + mem[_11770] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11771 * actions.length) - mem[_11770] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4852 + 360]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4852 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11645 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11773 = mem[_11645]
                                if mem[_11645] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11645] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11772 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11773 * actions.length) + mem[_11772] < mem[_11772]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11773 * actions.length) + mem[_11772] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11773 * actions.length) - mem[_11772] != 0 / totalSupply:
                                revert with 0, 'O20'
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_4852 + 274 len 22]
                    emit FeeSent(sub_78922c8f * 0 / totalSupply / 10000, sub_38d96a74Address);
                    mem[_4852 + 200] = msg.sender
                    mem[_4852 + 232] = (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000)
                    mem[_4852 + 164] = 68
                    mem[_4852 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4852 + 328
                    mem[_4852 + 264] = 32
                    mem[_4852 + 296] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4852 + 328 len 64] = 0, msg.sender, Mask(224, 32, (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000)) >> 32
                    mem[_4852 + 420 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000), 0, mem[_4852 + 392 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11647 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11775 = mem[_11647]
                                if mem[_11647] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11647] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11774 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11775 * actions.length) + mem[_11774] < mem[_11774]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11775 * actions.length) + mem[_11774] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11775 * actions.length) - mem[_11774] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4852 + 438 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11649 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11777 = mem[_11649]
                                if mem[_11649] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11649] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11776 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11777 * actions.length) + mem[_11776] < mem[_11776]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11777 * actions.length) + mem[_11776] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11777 * actions.length) - mem[_11776] != 0 / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4852 + ceil32(return_data.size) + 329
                        mem[_4852 + 328] = return_data.size
                        mem[_4852 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11651 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11779 = mem[_11651]
                                if mem[_11651] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11651] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11778 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11779 * actions.length) + mem[_11778] < mem[_11778]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11779 * actions.length) + mem[_11778] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11779 * actions.length) - mem[_11778] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4852 + 360]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4852 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11653 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11781 = mem[_11653]
                                if mem[_11653] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11653] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11780 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11781 * actions.length) + mem[_11780] < mem[_11780]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11781 * actions.length) + mem[_11780] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11781 * actions.length) - mem[_11780] != 0 / totalSupply:
                                revert with 0, 'O20'
            else:
                mem[_4852 + 164] = return_data.size
                mem[_4852 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    emit FeeSent(sub_78922c8f * 0 / totalSupply / 10000, sub_38d96a74Address);
                    mem[_4852 + ceil32(return_data.size) + 201] = msg.sender
                    mem[_4852 + ceil32(return_data.size) + 233] = (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000)
                    mem[_4852 + ceil32(return_data.size) + 165] = 68
                    mem[_4852 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4852 + ceil32(return_data.size) + 329
                    mem[_4852 + ceil32(return_data.size) + 265] = 32
                    mem[_4852 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4852 + ceil32(return_data.size) + 329 len 64] = 0, msg.sender, Mask(224, 32, (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000)) >> 32
                    mem[_4852 + ceil32(return_data.size) + 421 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000), 0, mem[_4852 + ceil32(return_data.size) + 393 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11655 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11783 = mem[_11655]
                                if mem[_11655] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11655] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11782 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11783 * actions.length) + mem[_11782] < mem[_11782]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11783 * actions.length) + mem[_11782] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11783 * actions.length) - mem[_11782] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4852 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11657 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11785 = mem[_11657]
                                if mem[_11657] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11657] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11784 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11785 * actions.length) + mem[_11784] < mem[_11784]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11785 * actions.length) + mem[_11784] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11785 * actions.length) - mem[_11784] != 0 / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4852 + (2 * ceil32(return_data.size)) + 330
                        mem[_4852 + ceil32(return_data.size) + 329] = return_data.size
                        mem[_4852 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11659 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11787 = mem[_11659]
                                if mem[_11659] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11659] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11786 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11787 * actions.length) + mem[_11786] < mem[_11786]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11787 * actions.length) + mem[_11786] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11787 * actions.length) - mem[_11786] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4852 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4852 + (2 * ceil32(return_data.size)) + 440 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11661 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11789 = mem[_11661]
                                if mem[_11661] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11661] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11788 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11789 * actions.length) + mem[_11788] < mem[_11788]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11789 * actions.length) + mem[_11788] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11789 * actions.length) - mem[_11788] != 0 / totalSupply:
                                revert with 0, 'O20'
                else:
                    require return_data.size >= 32
                    if not mem[_4852 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_4852 + ceil32(return_data.size) + 275 len 22]
                    emit FeeSent(sub_78922c8f * 0 / totalSupply / 10000, sub_38d96a74Address);
                    mem[_4852 + ceil32(return_data.size) + 201] = msg.sender
                    mem[_4852 + ceil32(return_data.size) + 233] = (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000)
                    mem[_4852 + ceil32(return_data.size) + 165] = 68
                    mem[_4852 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4852 + ceil32(return_data.size) + 329
                    mem[_4852 + ceil32(return_data.size) + 265] = 32
                    mem[_4852 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4852 + ceil32(return_data.size) + 329 len 64] = 0, msg.sender, Mask(224, 32, (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000)) >> 32
                    mem[_4852 + ceil32(return_data.size) + 421 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000), 0, mem[_4852 + ceil32(return_data.size) + 393 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11663 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11791 = mem[_11663]
                                if mem[_11663] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11663] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11790 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11791 * actions.length) + mem[_11790] < mem[_11790]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11791 * actions.length) + mem[_11790] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11791 * actions.length) - mem[_11790] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4852 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11665 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11793 = mem[_11665]
                                if mem[_11665] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11665] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11792 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11793 * actions.length) + mem[_11792] < mem[_11792]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11793 * actions.length) + mem[_11792] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11793 * actions.length) - mem[_11792] != 0 / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4852 + (2 * ceil32(return_data.size)) + 330
                        mem[_4852 + ceil32(return_data.size) + 329] = return_data.size
                        mem[_4852 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11667 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11795 = mem[_11667]
                                if mem[_11667] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11667] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11794 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11795 * actions.length) + mem[_11794] < mem[_11794]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11795 * actions.length) + mem[_11794] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11795 * actions.length) - mem[_11794] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4852 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4852 + (2 * ceil32(return_data.size)) + 440 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11669 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11797 = mem[_11669]
                                if mem[_11669] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11669] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11796 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11797 * actions.length) + mem[_11796] < mem[_11796]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11797 * actions.length) + mem[_11796] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11797 * actions.length) - mem[_11796] != 0 / totalSupply:
                                revert with 0, 'O20'
            emit Withdraw(msg.sender, (0 / totalSupply) - (sub_78922c8f * 0 / totalSupply / 10000), arg1);
        else:
            if 0 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4766 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if 0 / totalSupply > mem[_4766]:
                revert with 0, 'O8'
            if not msg.sender:
                revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
            _4790 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4790] = 34
            mem[_4790 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(msg.sender)]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 34
                mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_4790 + 66 len 30]
                mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                revert with 0, 32, 34, mem[mem[64] + 68 len 64]
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            _4846 = mem[64]
            mem[mem[64] + 36] = sub_38d96a74Address
            mem[mem[64] + 68] = 0
            _4847 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_4846 + 100] = 32
            mem[_4846 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            _4863 = mem[_4847]
            mem[_4846 + 164 len floor32(mem[_4847])] = mem[_4847 + 32 len floor32(mem[_4847])]
            mem[_4846 + floor32(mem[_4847]) + -(mem[_4847] % 32) + 196 len mem[_4847] % 32] = mem[_4847 + -(mem[_4847] % 32) + floor32(mem[_4847]) + 64 len mem[_4847] % 32]
            call underlyingAddress.mem[_4846 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4846 + 168 len _4863 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not mem[96]:
                    emit FeeSent(0, sub_38d96a74Address);
                    mem[_4846 + 200] = msg.sender
                    mem[_4846 + 232] = 0 / totalSupply
                    mem[_4846 + 164] = 68
                    mem[_4846 + 200 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4846 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4846 + 328
                    mem[_4846 + 264] = 32
                    mem[_4846 + 296] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4846 + 328 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    mem[_4846 + 420 len 4] = 0
                    mem[_4846 + 392 len 0] = 0
                    call underlyingAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[_4846 + 392 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11671 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11799 = mem[_11671]
                                if mem[_11671] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11671] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11798 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11799 * actions.length) + mem[_11798] < mem[_11798]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11799 * actions.length) + mem[_11798] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11799 * actions.length) - mem[_11798] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4846 + 438 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11673 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11801 = mem[_11673]
                                if mem[_11673] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11673] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11800 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11801 * actions.length) + mem[_11800] < mem[_11800]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11801 * actions.length) + mem[_11800] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11801 * actions.length) - mem[_11800] != 0 / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4846 + ceil32(return_data.size) + 329
                        mem[_4846 + 328] = return_data.size
                        mem[_4846 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11675 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11803 = mem[_11675]
                                if mem[_11675] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11675] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11802 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11803 * actions.length) + mem[_11802] < mem[_11802]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11803 * actions.length) + mem[_11802] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11803 * actions.length) - mem[_11802] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4846 + 360]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4846 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11677 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11805 = mem[_11677]
                                if mem[_11677] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11677] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11804 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11805 * actions.length) + mem[_11804] < mem[_11804]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11805 * actions.length) + mem[_11804] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11805 * actions.length) - mem[_11804] != 0 / totalSupply:
                                revert with 0, 'O20'
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_4846 + 274 len 22]
                    emit FeeSent(0, sub_38d96a74Address);
                    mem[_4846 + 200] = msg.sender
                    mem[_4846 + 232] = 0 / totalSupply
                    mem[_4846 + 164] = 68
                    mem[_4846 + 200 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4846 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4846 + 328
                    mem[_4846 + 264] = 32
                    mem[_4846 + 296] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4846 + 328 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    mem[_4846 + 420 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[_4846 + 392 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11679 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11807 = mem[_11679]
                                if mem[_11679] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11679] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11806 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11807 * actions.length) + mem[_11806] < mem[_11806]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11807 * actions.length) + mem[_11806] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11807 * actions.length) - mem[_11806] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4846 + 438 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11681 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11809 = mem[_11681]
                                if mem[_11681] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11681] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11808 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11809 * actions.length) + mem[_11808] < mem[_11808]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11809 * actions.length) + mem[_11808] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11809 * actions.length) - mem[_11808] != 0 / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4846 + ceil32(return_data.size) + 329
                        mem[_4846 + 328] = return_data.size
                        mem[_4846 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11683 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11811 = mem[_11683]
                                if mem[_11683] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11683] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11810 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11811 * actions.length) + mem[_11810] < mem[_11810]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11811 * actions.length) + mem[_11810] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11811 * actions.length) - mem[_11810] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4846 + 360]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4846 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11685 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11813 = mem[_11685]
                                if mem[_11685] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11685] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11812 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11813 * actions.length) + mem[_11812] < mem[_11812]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11813 * actions.length) + mem[_11812] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11813 * actions.length) - mem[_11812] != 0 / totalSupply:
                                revert with 0, 'O20'
            else:
                mem[_4846 + 164] = return_data.size
                mem[_4846 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    emit FeeSent(0, sub_38d96a74Address);
                    mem[_4846 + ceil32(return_data.size) + 201] = msg.sender
                    mem[_4846 + ceil32(return_data.size) + 233] = 0 / totalSupply
                    mem[_4846 + ceil32(return_data.size) + 165] = 68
                    mem[_4846 + ceil32(return_data.size) + 201 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4846 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4846 + ceil32(return_data.size) + 329
                    mem[_4846 + ceil32(return_data.size) + 265] = 32
                    mem[_4846 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4846 + ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    mem[_4846 + ceil32(return_data.size) + 421 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[_4846 + ceil32(return_data.size) + 393 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11687 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11815 = mem[_11687]
                                if mem[_11687] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11687] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11814 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11815 * actions.length) + mem[_11814] < mem[_11814]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11815 * actions.length) + mem[_11814] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11815 * actions.length) - mem[_11814] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4846 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11689 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11817 = mem[_11689]
                                if mem[_11689] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11689] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11816 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11817 * actions.length) + mem[_11816] < mem[_11816]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11817 * actions.length) + mem[_11816] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11817 * actions.length) - mem[_11816] != 0 / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4846 + (2 * ceil32(return_data.size)) + 330
                        mem[_4846 + ceil32(return_data.size) + 329] = return_data.size
                        mem[_4846 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4846 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11691 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11819 = mem[_11691]
                                if mem[_11691] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11691] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11818 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11819 * actions.length) + mem[_11818] < mem[_11818]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11819 * actions.length) + mem[_11818] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11819 * actions.length) - mem[_11818] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4846 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4846 + (2 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11693 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11821 = mem[_11693]
                                if mem[_11693] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11693] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11820 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11821 * actions.length) + mem[_11820] < mem[_11820]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11821 * actions.length) + mem[_11820] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11821 * actions.length) - mem[_11820] != 0 / totalSupply:
                                revert with 0, 'O20'
                else:
                    require return_data.size >= 32
                    if not mem[_4846 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_4846 + ceil32(return_data.size) + 275 len 22]
                    emit FeeSent(0, sub_38d96a74Address);
                    mem[_4846 + ceil32(return_data.size) + 201] = msg.sender
                    mem[_4846 + ceil32(return_data.size) + 233] = 0 / totalSupply
                    mem[_4846 + ceil32(return_data.size) + 165] = 68
                    mem[_4846 + ceil32(return_data.size) + 201 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4846 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4846 + ceil32(return_data.size) + 329
                    mem[_4846 + ceil32(return_data.size) + 265] = 32
                    mem[_4846 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4846 + ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / totalSupply) >> 32
                    mem[_4846 + ceil32(return_data.size) + 421 len 4] = 0
                    mem[_4846 + ceil32(return_data.size) + 393 len 0] = 0
                    call underlyingAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, 0 / totalSupply) << 224, mem[_4846 + ceil32(return_data.size) + 393 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11695 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11823 = mem[_11695]
                                if mem[_11695] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11695] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11822 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11823 * actions.length) + mem[_11822] < mem[_11822]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11823 * actions.length) + mem[_11822] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11823 * actions.length) - mem[_11822] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4846 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11697 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11825 = mem[_11697]
                                if mem[_11697] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11697] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11824 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11825 * actions.length) + mem[_11824] < mem[_11824]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11825 * actions.length) + mem[_11824] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11825 * actions.length) - mem[_11824] != 0 / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4846 + (2 * ceil32(return_data.size)) + 330
                        mem[_4846 + ceil32(return_data.size) + 329] = return_data.size
                        mem[_4846 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11699 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11827 = mem[_11699]
                                if mem[_11699] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11699] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11826 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11827 * actions.length) + mem[_11826] < mem[_11826]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11827 * actions.length) + mem[_11826] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11827 * actions.length) - mem[_11826] != 0 / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4846 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4846 + (2 * ceil32(return_data.size)) + 440 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11701 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11829 = mem[_11701]
                                if mem[_11701] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11701] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11828 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11829 * actions.length) + mem[_11828] < mem[_11828]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11829 * actions.length) + mem[_11828] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11829 * actions.length) - mem[_11828] != 0 / totalSupply:
                                revert with 0, 'O20'
            emit Withdraw(msg.sender, 0 / totalSupply, arg1);
    else:
        if (_4734 * actions.length * arg1) + (mem[_4733] * arg1) / arg1 != (_4734 * actions.length) + mem[_4733]:
            revert with 0, 32, 33, 0x87536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not (_4734 * actions.length * arg1) + (mem[_4733] * arg1) / totalSupply:
            if 0 > (_4734 * actions.length * arg1) + (mem[_4733] * arg1) / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4767 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply > mem[_4767]:
                revert with 0, 'O8'
            if not msg.sender:
                revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
            _4792 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4792] = 34
            mem[_4792 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(msg.sender)]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 34
                mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_4792 + 66 len 30]
                mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                revert with 0, 32, 34, mem[mem[64] + 68 len 64]
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            _4849 = mem[64]
            mem[mem[64] + 36] = sub_38d96a74Address
            mem[mem[64] + 68] = 0
            _4850 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_4849 + 100] = 32
            mem[_4849 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            _4867 = mem[_4850]
            mem[_4849 + 164 len floor32(mem[_4850])] = mem[_4850 + 32 len floor32(mem[_4850])]
            mem[_4849 + floor32(mem[_4850]) + -(mem[_4850] % 32) + 196 len mem[_4850] % 32] = mem[_4850 + -(mem[_4850] % 32) + floor32(mem[_4850]) + 64 len mem[_4850] % 32]
            call underlyingAddress.mem[_4849 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4849 + 168 len _4867 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not mem[96]:
                    emit FeeSent(0, sub_38d96a74Address);
                    mem[_4849 + 200] = msg.sender
                    mem[_4849 + 232] = (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply
                    mem[_4849 + 164] = 68
                    mem[_4849 + 200 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4849 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4849 + 328
                    mem[_4849 + 264] = 32
                    mem[_4849 + 296] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4849 + 328 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) >> 32
                    mem[_4849 + 420 len 4] = 0
                    mem[_4849 + 392 len 0] = 0
                    call underlyingAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) << 224, mem[_4849 + 392 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11607 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11735 = mem[_11607]
                                if mem[_11607] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11607] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11734 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11735 * actions.length) + mem[_11734] < mem[_11734]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11735 * actions.length) + mem[_11734] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11735 * actions.length) - mem[_11734] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4849 + 438 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11609 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11737 = mem[_11609]
                                if mem[_11609] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11609] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11736 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11737 * actions.length) + mem[_11736] < mem[_11736]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11737 * actions.length) + mem[_11736] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11737 * actions.length) - mem[_11736] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4849 + ceil32(return_data.size) + 329
                        mem[_4849 + 328] = return_data.size
                        mem[_4849 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11611 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11739 = mem[_11611]
                                if mem[_11611] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11611] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11738 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11739 * actions.length) + mem[_11738] < mem[_11738]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11739 * actions.length) + mem[_11738] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11739 * actions.length) - mem[_11738] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4849 + 360]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4849 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11613 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11741 = mem[_11613]
                                if mem[_11613] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11613] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11740 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11741 * actions.length) + mem[_11740] < mem[_11740]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11741 * actions.length) + mem[_11740] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11741 * actions.length) - mem[_11740] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_4849 + 274 len 22]
                    emit FeeSent(0, sub_38d96a74Address);
                    mem[_4849 + 200] = msg.sender
                    mem[_4849 + 232] = (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply
                    mem[_4849 + 164] = 68
                    mem[_4849 + 200 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4849 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4849 + 328
                    mem[_4849 + 264] = 32
                    mem[_4849 + 296] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4849 + 328 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) >> 32
                    mem[_4849 + 420 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) << 224, mem[_4849 + 392 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11615 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11743 = mem[_11615]
                                if mem[_11615] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11615] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11742 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11743 * actions.length) + mem[_11742] < mem[_11742]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11743 * actions.length) + mem[_11742] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11743 * actions.length) - mem[_11742] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4849 + 438 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11617 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11745 = mem[_11617]
                                if mem[_11617] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11617] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11744 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11745 * actions.length) + mem[_11744] < mem[_11744]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11745 * actions.length) + mem[_11744] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11745 * actions.length) - mem[_11744] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4849 + ceil32(return_data.size) + 329
                        mem[_4849 + 328] = return_data.size
                        mem[_4849 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11619 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11747 = mem[_11619]
                                if mem[_11619] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11619] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11746 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11747 * actions.length) + mem[_11746] < mem[_11746]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11747 * actions.length) + mem[_11746] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11747 * actions.length) - mem[_11746] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4849 + 360]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4849 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11621 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11749 = mem[_11621]
                                if mem[_11621] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11621] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11748 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11749 * actions.length) + mem[_11748] < mem[_11748]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11749 * actions.length) + mem[_11748] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11749 * actions.length) - mem[_11748] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
            else:
                mem[_4849 + 164] = return_data.size
                mem[_4849 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    emit FeeSent(0, sub_38d96a74Address);
                    mem[_4849 + ceil32(return_data.size) + 201] = msg.sender
                    mem[_4849 + ceil32(return_data.size) + 233] = (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply
                    mem[_4849 + ceil32(return_data.size) + 165] = 68
                    mem[_4849 + ceil32(return_data.size) + 201 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4849 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4849 + ceil32(return_data.size) + 329
                    mem[_4849 + ceil32(return_data.size) + 265] = 32
                    mem[_4849 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4849 + ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) >> 32
                    mem[_4849 + ceil32(return_data.size) + 421 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) << 224, mem[_4849 + ceil32(return_data.size) + 393 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11623 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11751 = mem[_11623]
                                if mem[_11623] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11623] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11750 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11751 * actions.length) + mem[_11750] < mem[_11750]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11751 * actions.length) + mem[_11750] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11751 * actions.length) - mem[_11750] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4849 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11625 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11753 = mem[_11625]
                                if mem[_11625] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11625] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11752 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11753 * actions.length) + mem[_11752] < mem[_11752]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11753 * actions.length) + mem[_11752] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11753 * actions.length) - mem[_11752] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4849 + (2 * ceil32(return_data.size)) + 330
                        mem[_4849 + ceil32(return_data.size) + 329] = return_data.size
                        mem[_4849 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4849 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11627 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11755 = mem[_11627]
                                if mem[_11627] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11627] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11754 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11755 * actions.length) + mem[_11754] < mem[_11754]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11755 * actions.length) + mem[_11754] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11755 * actions.length) - mem[_11754] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4849 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4849 + (2 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11629 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11757 = mem[_11629]
                                if mem[_11629] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11629] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11756 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11757 * actions.length) + mem[_11756] < mem[_11756]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11757 * actions.length) + mem[_11756] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11757 * actions.length) - mem[_11756] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                else:
                    require return_data.size >= 32
                    if not mem[_4849 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_4849 + ceil32(return_data.size) + 275 len 22]
                    emit FeeSent(0, sub_38d96a74Address);
                    mem[_4849 + ceil32(return_data.size) + 201] = msg.sender
                    mem[_4849 + ceil32(return_data.size) + 233] = (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply
                    mem[_4849 + ceil32(return_data.size) + 165] = 68
                    mem[_4849 + ceil32(return_data.size) + 201 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4849 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4849 + ceil32(return_data.size) + 329
                    mem[_4849 + ceil32(return_data.size) + 265] = 32
                    mem[_4849 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4849 + ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) >> 32
                    mem[_4849 + ceil32(return_data.size) + 421 len 4] = 0
                    mem[_4849 + ceil32(return_data.size) + 393 len 0] = 0
                    call underlyingAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) << 224, mem[_4849 + ceil32(return_data.size) + 393 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11631 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11759 = mem[_11631]
                                if mem[_11631] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11631] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11758 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11759 * actions.length) + mem[_11758] < mem[_11758]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11759 * actions.length) + mem[_11758] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11759 * actions.length) - mem[_11758] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4849 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11633 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11761 = mem[_11633]
                                if mem[_11633] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11633] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11760 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11761 * actions.length) + mem[_11760] < mem[_11760]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11761 * actions.length) + mem[_11760] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11761 * actions.length) - mem[_11760] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4849 + (2 * ceil32(return_data.size)) + 330
                        mem[_4849 + ceil32(return_data.size) + 329] = return_data.size
                        mem[_4849 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11635 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11763 = mem[_11635]
                                if mem[_11635] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11635] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11762 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11763 * actions.length) + mem[_11762] < mem[_11762]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11763 * actions.length) + mem[_11762] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11763 * actions.length) - mem[_11762] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4849 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4849 + (2 * ceil32(return_data.size)) + 440 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11637 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11765 = mem[_11637]
                                if mem[_11637] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11637] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11764 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11765 * actions.length) + mem[_11764] < mem[_11764]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11765 * actions.length) + mem[_11764] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11765 * actions.length) - mem[_11764] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
            emit Withdraw(msg.sender, (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply, arg1);
        else:
            if sub_78922c8f * (_4734 * actions.length * arg1) + (mem[_4733] * arg1) / totalSupply / (_4734 * actions.length * arg1) + (mem[_4733] * arg1) / totalSupply != sub_78922c8f:
                revert with 0, 32, 33, 0x87536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if sub_78922c8f * (_4734 * actions.length * arg1) + (mem[_4733] * arg1) / totalSupply / 10000 > (_4734 * actions.length * arg1) + (mem[_4733] * arg1) / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[mem[64] + 4] = this.address
            require ext_code.size(underlyingAddress)
            staticcall underlyingAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _4769 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply > mem[_4769]:
                revert with 0, 'O8'
            if not msg.sender:
                revert with 0, 32, 33, 0x7245524332303a206275726e2066726f6d20746865207a65726f20616464726573, mem[mem[64] + 101 len 31]
            _4796 = mem[64]
            mem[64] = mem[64] + 96
            mem[_4796] = 34
            mem[_4796 + 32 len 34] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63
            if arg1 > balanceOf[address(msg.sender)]:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 34
                mem[mem[64] + 68 len 64] = 0x7345524332303a206275726e20616d6f756e7420657863656564732062616c616e63, mem[_4796 + 66 len 30]
                mem[mem[64] + 100] = mem[mem[64] + 130 len 2]
                revert with 0, 32, 34, mem[mem[64] + 68 len 64]
            mem[0] = msg.sender
            mem[32] = 0
            balanceOf[address(msg.sender)] -= arg1
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            emit Transfer(arg1, msg.sender, 0);
            _4856 = mem[64]
            mem[mem[64] + 36] = sub_38d96a74Address
            mem[mem[64] + 68] = sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000
            _4857 = mem[64]
            mem[mem[64]] = 68
            mem[mem[64] + 32 len 4] = unknown_0xa9059cbb(?????)
            mem[64] = mem[64] + 164
            mem[_4856 + 100] = 32
            mem[_4856 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(underlyingAddress):
                revert with 0, 'Address: call to non-contract'
            _4875 = mem[_4857]
            mem[_4856 + 164 len floor32(mem[_4857])] = mem[_4857 + 32 len floor32(mem[_4857])]
            mem[_4856 + floor32(mem[_4857]) + -(mem[_4857] % 32) + 196 len mem[_4857] % 32] = mem[_4857 + -(mem[_4857] % 32) + floor32(mem[_4857]) + 64 len mem[_4857] % 32]
            call underlyingAddress.mem[_4856 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_4856 + 168 len _4875 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not mem[96]:
                    emit FeeSent(sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000, sub_38d96a74Address);
                    mem[_4856 + 200] = msg.sender
                    mem[_4856 + 232] = ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)
                    mem[_4856 + 164] = 68
                    mem[_4856 + 200 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4856 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4856 + 328
                    mem[_4856 + 264] = 32
                    mem[_4856 + 296] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4856 + 328 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)) >> 32
                    mem[_4856 + 420 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)) << 224, mem[_4856 + 392 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11575 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11703 = mem[_11575]
                                if mem[_11575] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11575] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11702 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11703 * actions.length) + mem[_11702] < mem[_11702]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11703 * actions.length) + mem[_11702] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11703 * actions.length) - mem[_11702] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4856 + 438 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11577 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11705 = mem[_11577]
                                if mem[_11577] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11577] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11704 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11705 * actions.length) + mem[_11704] < mem[_11704]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11705 * actions.length) + mem[_11704] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11705 * actions.length) - mem[_11704] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4856 + ceil32(return_data.size) + 329
                        mem[_4856 + 328] = return_data.size
                        mem[_4856 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11579 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11707 = mem[_11579]
                                if mem[_11579] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11579] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11706 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11707 * actions.length) + mem[_11706] < mem[_11706]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11707 * actions.length) + mem[_11706] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11707 * actions.length) - mem[_11706] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4856 + 360]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4856 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11581 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11709 = mem[_11581]
                                if mem[_11581] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11581] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11708 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11709 * actions.length) + mem[_11708] < mem[_11708]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11709 * actions.length) + mem[_11708] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11709 * actions.length) - mem[_11708] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                else:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_4856 + 274 len 22]
                    emit FeeSent(sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000, sub_38d96a74Address);
                    mem[_4856 + 200] = msg.sender
                    mem[_4856 + 232] = ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)
                    mem[_4856 + 164] = 68
                    mem[_4856 + 200 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4856 + 196 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4856 + 328
                    mem[_4856 + 264] = 32
                    mem[_4856 + 296] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4856 + 328 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)) >> 32
                    mem[_4856 + 420 len 4] = 0
                    mem[_4856 + 392 len 0] = 0
                    call underlyingAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)) << 224, mem[_4856 + 392 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11583 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11711 = mem[_11583]
                                if mem[_11583] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11583] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11710 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11711 * actions.length) + mem[_11710] < mem[_11710]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11711 * actions.length) + mem[_11710] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11711 * actions.length) - mem[_11710] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4856 + 438 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11585 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11713 = mem[_11585]
                                if mem[_11585] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11585] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11712 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11713 * actions.length) + mem[_11712] < mem[_11712]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11713 * actions.length) + mem[_11712] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11713 * actions.length) - mem[_11712] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4856 + ceil32(return_data.size) + 329
                        mem[_4856 + 328] = return_data.size
                        mem[_4856 + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11587 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11715 = mem[_11587]
                                if mem[_11587] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11587] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11714 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11715 * actions.length) + mem[_11714] < mem[_11714]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11715 * actions.length) + mem[_11714] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11715 * actions.length) - mem[_11714] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4856 + 360]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4856 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11589 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11717 = mem[_11589]
                                if mem[_11589] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11589] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11716 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11717 * actions.length) + mem[_11716] < mem[_11716]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11717 * actions.length) + mem[_11716] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11717 * actions.length) - mem[_11716] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
            else:
                mem[_4856 + 164] = return_data.size
                mem[_4856 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if not return_data.size:
                    emit FeeSent(sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000, sub_38d96a74Address);
                    mem[_4856 + ceil32(return_data.size) + 201] = msg.sender
                    mem[_4856 + ceil32(return_data.size) + 233] = ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)
                    mem[_4856 + ceil32(return_data.size) + 165] = 68
                    mem[_4856 + ceil32(return_data.size) + 201 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4856 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4856 + ceil32(return_data.size) + 329
                    mem[_4856 + ceil32(return_data.size) + 265] = 32
                    mem[_4856 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4856 + ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)) >> 32
                    mem[_4856 + ceil32(return_data.size) + 421 len 4] = 0
                    call underlyingAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)) << 224, mem[_4856 + ceil32(return_data.size) + 393 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11591 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11719 = mem[_11591]
                                if mem[_11591] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11591] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11718 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11719 * actions.length) + mem[_11718] < mem[_11718]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11719 * actions.length) + mem[_11718] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11719 * actions.length) - mem[_11718] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4856 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11593 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11721 = mem[_11593]
                                if mem[_11593] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11593] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11720 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11721 * actions.length) + mem[_11720] < mem[_11720]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11721 * actions.length) + mem[_11720] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11721 * actions.length) - mem[_11720] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4856 + (2 * ceil32(return_data.size)) + 330
                        mem[_4856 + ceil32(return_data.size) + 329] = return_data.size
                        mem[_4856 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 
                                        'SafeERC20: low-level call failed',
                                        mem[_4856 + (2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11595 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11723 = mem[_11595]
                                if mem[_11595] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11595] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11722 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11723 * actions.length) + mem[_11722] < mem[_11722]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11723 * actions.length) + mem[_11722] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11723 * actions.length) - mem[_11722] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4856 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4856 + (2 * ceil32(return_data.size)) + 440 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11597 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11725 = mem[_11597]
                                if mem[_11597] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11597] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11724 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11725 * actions.length) + mem[_11724] < mem[_11724]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11725 * actions.length) + mem[_11724] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11725 * actions.length) - mem[_11724] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                else:
                    require return_data.size >= 32
                    if not mem[_4856 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_4856 + ceil32(return_data.size) + 275 len 22]
                    emit FeeSent(sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000, sub_38d96a74Address);
                    mem[_4856 + ceil32(return_data.size) + 201] = msg.sender
                    mem[_4856 + ceil32(return_data.size) + 233] = ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)
                    mem[_4856 + ceil32(return_data.size) + 165] = 68
                    mem[_4856 + ceil32(return_data.size) + 201 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[_4856 + ceil32(return_data.size) + 197 len 4] = unknown_0xa9059cbb(?????)
                    mem[64] = _4856 + ceil32(return_data.size) + 329
                    mem[_4856 + ceil32(return_data.size) + 265] = 32
                    mem[_4856 + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(underlyingAddress):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4856 + ceil32(return_data.size) + 329 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)) >> 32
                    mem[_4856 + ceil32(return_data.size) + 421 len 4] = 0
                    mem[_4856 + ceil32(return_data.size) + 393 len 0] = 0
                    call underlyingAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000)) << 224, mem[_4856 + ceil32(return_data.size) + 393 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not mem[96]:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11599 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11727 = mem[_11599]
                                if mem[_11599] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11599] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11726 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11727 * actions.length) + mem[_11726] < mem[_11726]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11727 * actions.length) + mem[_11726] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11727 * actions.length) - mem[_11726] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4856 + ceil32(return_data.size) + 439 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11601 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11729 = mem[_11601]
                                if mem[_11601] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11601] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11728 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11729 * actions.length) + mem[_11728] < mem[_11728]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11729 * actions.length) + mem[_11728] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11729 * actions.length) - mem[_11728] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                    else:
                        mem[64] = _4856 + (2 * ceil32(return_data.size)) + 330
                        mem[_4856 + ceil32(return_data.size) + 329] = return_data.size
                        mem[_4856 + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not return_data.size:
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11603 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11731 = mem[_11603]
                                if mem[_11603] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11603] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11730 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11731 * actions.length) + mem[_11730] < mem[_11730]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11731 * actions.length) + mem[_11730] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11731 * actions.length) - mem[_11730] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
                        else:
                            require return_data.size >= 32
                            if not mem[_4856 + ceil32(return_data.size) + 361]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x735361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4856 + (2 * ceil32(return_data.size)) + 440 len 22]
                            idx = 0
                            s = 0
                            while idx < actions.length:
                                mem[0] = 8
                                require ext_code.size(actions[idx].field_0)
                                staticcall actions[idx].field_0.currentValue() with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _11605 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _11733 = mem[_11605]
                                if mem[_11605] + s < s:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = mem[_11605] + s
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(underlyingAddress)
                            staticcall underlyingAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args address(this.address)
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _11732 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if (_11733 * actions.length) + mem[_11732] < mem[_11732]:
                                revert with 0, 'SafeMath: addition overflow'
                            if (_11733 * actions.length) + mem[_11732] > (_2374 * actions.length) + _2375:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if (_2374 * actions.length) + _2375 - (_11733 * actions.length) - mem[_11732] != (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply:
                                revert with 0, 'O20'
            emit Withdraw(msg.sender, ((_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply) - (sub_78922c8f * (_4734 * actions.length * arg1) + (_4735 * arg1) / totalSupply / 10000), arg1);
    stor6 = 1
}



}
