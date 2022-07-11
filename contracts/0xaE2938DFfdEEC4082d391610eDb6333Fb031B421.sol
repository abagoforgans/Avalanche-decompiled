contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
uint256 stor6;
address sub_1c1a1a17Address;
address sub_b898045cAddress;
address sub_ba73dc17Address;
address sub_14e20981Address;
address sub_c22737fdAddress;
address sub_230e386aAddress;
uint256 sub_273ddf35;
uint256 sub_b349bfe8;
uint256 sub_e6576688;
uint256 sub_73fec383;
uint256 sub_f5e5a794;
uint256 sub_7a3f2625;
uint256 sub_f474cbe7;
uint256 sub_f33bf4ca;
uint256 sub_c0788963;
uint256 sub_605d18a0;
uint256 sub_6fa90f8d;
uint256 sub_8e424fb0;
uint256 sub_59b75ca2;
uint256 MAX_LEVEL;
mapping of uint8 stor27;

function sub_14e20981(?) payable {
    return sub_14e20981Address
}

function totalSupply() payable {
    return totalSupply
}

function sub_1c1a1a17(?) payable {
    return sub_1c1a1a17Address
}

function sub_230e386a(?) payable {
    return sub_230e386aAddress
}

function sub_273ddf35(?) payable {
    return sub_273ddf35
}

function sub_59b75ca2(?) payable {
    return sub_59b75ca2
}

function sub_605d18a0(?) payable {
    return sub_605d18a0
}

function sub_6c0305b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor27[arg1])
}

function sub_6fa90f8d(?) payable {
    return sub_6fa90f8d
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_73fec383(?) payable {
    return sub_73fec383
}

function sub_7a3f2625(?) payable {
    return sub_7a3f2625
}

function owner() payable {
    return owner
}

function sub_8e424fb0(?) payable {
    return sub_8e424fb0
}

function MAX_LEVEL() payable {
    return MAX_LEVEL
}

function sub_b349bfe8(?) payable {
    return sub_b349bfe8
}

function sub_b898045c(?) payable {
    return sub_b898045cAddress
}

function sub_ba73dc17(?) payable {
    return sub_ba73dc17Address
}

function sub_c0788963(?) payable {
    return sub_c0788963
}

function sub_c22737fd(?) payable {
    return sub_c22737fdAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e6576688(?) payable {
    return sub_e6576688
}

function sub_f33bf4ca(?) payable {
    return sub_f33bf4ca
}

function sub_f474cbe7(?) payable {
    return sub_f474cbe7
}

function sub_f5e5a794(?) payable {
    return sub_f5e5a794
}

function _fallback() payable {
    revert
}

function sub_2c57d123(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MAX_LEVEL = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_0b2bfd35(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f33bf4ca = arg1
}

function sub_269a4c3e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f474cbe7 = arg1
}

function sub_8df660ac(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_59b75ca2 = arg1
}

function sub_a667a62a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_7a3f2625 = arg1
}

function sub_c81eb387(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_8e424fb0 = arg1
}

function sub_dd0b2ff4(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_605d18a0 = arg1
}

function sub_e387308d(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_f5e5a794 = arg1
}

function sub_e3f28755(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_6fa90f8d = arg1
}

function sub_f19ec6a3(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c0788963 = arg1
}

function sub_61af9abe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor27[address(arg1)] = 1
}

function sub_0a585f4b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_14e20981Address = address(arg1)
}

function sub_2575afe6(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ba73dc17Address = address(arg1)
}

function sub_8e3b677a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_1c1a1a17Address = address(arg1)
}

function sub_a5e421f0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b898045cAddress = address(arg1)
}

function sub_d263e38a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_230e386aAddress = address(arg1)
}

function sub_f1a7916f(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c22737fdAddress = address(arg1)
}

function sub_9bdc15f4(?) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_273ddf35 = arg1
    sub_b349bfe8 = arg2
    sub_e6576688 = arg3
    sub_73fec383 = arg4
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

function sub_8e95fb49(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor27[msg.sender]:
        revert with 0, 'You aren't allowed to mint.'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
}

function sub_62acd698(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !arg2:
        revert with 0, 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
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

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor27[msg.sender]:
        revert with 0, 'Only cheesy addresses can burn!'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn from the zero address'
    if balanceOf[address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: burn amount exceeds balance'
    balanceOf[address(arg1)] -= arg2
    if totalSupply < arg2:
        revert with 0, 17
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
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

function sub_3bf5f87c(?) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(sub_b898045cAddress)
    staticcall sub_b898045cAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You don't own that Burrata!'
    require ext_code.size(sub_b898045cAddress)
    call sub_b898045cAddress.0xb49fa4bf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !sub_7a3f2625:
        revert with 0, 17
    totalSupply += sub_7a3f2625
    if balanceOf[address(msg.sender)] > !sub_7a3f2625:
        revert with 0, 17
    balanceOf[address(msg.sender)] += sub_7a3f2625
    emit Transfer(sub_7a3f2625, 0, msg.sender);
    emit 0xd7f62ac3: msg.sender, 1
    stor6 = 1
}

function sub_264f2153(?) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(sub_14e20981Address)
    staticcall sub_14e20981Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You don't own that Parmesan!'
    require ext_code.size(sub_14e20981Address)
    call sub_14e20981Address.0xb49fa4bf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !sub_f33bf4ca:
        revert with 0, 17
    totalSupply += sub_f33bf4ca
    if balanceOf[address(msg.sender)] > !sub_f33bf4ca:
        revert with 0, 17
    balanceOf[address(msg.sender)] += sub_f33bf4ca
    emit Transfer(sub_f33bf4ca, 0, msg.sender);
    emit 0x7f15b4da: msg.sender, 1
    stor6 = 1
}

function sub_36c94f24(?) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(sub_ba73dc17Address)
    staticcall sub_ba73dc17Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You don't own that Dolcelatte!'
    require ext_code.size(sub_ba73dc17Address)
    call sub_ba73dc17Address.0xb49fa4bf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !sub_f474cbe7:
        revert with 0, 17
    totalSupply += sub_f474cbe7
    if balanceOf[address(msg.sender)] > !sub_f474cbe7:
        revert with 0, 17
    balanceOf[address(msg.sender)] += sub_f474cbe7
    emit Transfer(sub_f474cbe7, 0, msg.sender);
    emit 0x66ec8eb6: msg.sender, 1
    stor6 = 1
}

function sub_2e8b7bc7(?) payable {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(sub_1c1a1a17Address)
    staticcall sub_1c1a1a17Address.0x35c90890 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= MAX_LEVEL:
        revert with 0, 'Farmer already at max level!'
    if balanceOf[msg.sender] < sub_c0788963:
        revert with 0, 'You don't have enough kGOLD!'
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < sub_c0788963:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_c0788963
    if totalSupply < sub_c0788963:
        revert with 0, 17
    totalSupply -= sub_c0788963
    emit Transfer(sub_c0788963, msg.sender, 0);
    require ext_code.size(sub_1c1a1a17Address)
    call sub_1c1a1a17Address.0x8c0c1007 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe238234: msg.sender, sub_c0788963
    stor6 = 1
}

function sub_af1e951b(?) payable {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(sub_b898045cAddress)
    staticcall sub_b898045cAddress.0xb4f8bb82 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= MAX_LEVEL:
        revert with 0, 'Burrata already at max level!'
    if balanceOf[msg.sender] < sub_6fa90f8d:
        revert with 0, 'You don't have enough kGOLD!'
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < sub_6fa90f8d:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_6fa90f8d
    if totalSupply < sub_6fa90f8d:
        revert with 0, 17
    totalSupply -= sub_6fa90f8d
    emit Transfer(sub_6fa90f8d, msg.sender, 0);
    require ext_code.size(sub_b898045cAddress)
    call sub_b898045cAddress.0x1017a0c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe238234: msg.sender, sub_6fa90f8d
    stor6 = 1
}

function sub_ad74ff61(?) payable {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(sub_14e20981Address)
    staticcall sub_14e20981Address.0xb4f8bb82 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= MAX_LEVEL:
        revert with 0, 'Parmesan already at max level!'
    if balanceOf[msg.sender] < sub_59b75ca2:
        revert with 0, 'You don't have enough kGOLD!'
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < sub_59b75ca2:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_59b75ca2
    if totalSupply < sub_59b75ca2:
        revert with 0, 17
    totalSupply -= sub_59b75ca2
    emit Transfer(sub_59b75ca2, msg.sender, 0);
    require ext_code.size(sub_14e20981Address)
    call sub_14e20981Address.0x1017a0c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe238234: msg.sender, sub_59b75ca2
    stor6 = 1
}

function sub_dcba8abf(?) payable {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(sub_ba73dc17Address)
    staticcall sub_ba73dc17Address.0xb4f8bb82 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= MAX_LEVEL:
        revert with 0, 'Dolcelatte already at max level!'
    if balanceOf[msg.sender] < sub_8e424fb0:
        revert with 0, 'You don't have enough kGOLD!'
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < sub_8e424fb0:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_8e424fb0
    if totalSupply < sub_8e424fb0:
        revert with 0, 17
    totalSupply -= sub_8e424fb0
    emit Transfer(sub_8e424fb0, msg.sender, 0);
    require ext_code.size(sub_ba73dc17Address)
    call sub_ba73dc17Address.0x1017a0c with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe238234: msg.sender, sub_8e424fb0
    stor6 = 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(arg1)][address(msg.sender)] != -1:
        if allowance[address(arg1)][address(msg.sender)] < arg3:
            revert with 0, 'ERC20: insufficient allowance'
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
        allowance[address(arg1)][address(msg.sender)] -= arg3
        emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
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
    return 1
}

function sub_04ec7724(?) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    require ext_code.size(sub_c22737fdAddress)
    staticcall sub_c22737fdAddress.0xf4428671 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= MAX_LEVEL:
        revert with 0, 'Cat is already at max level!'
    require ext_code.size(sub_230e386aAddress)
    staticcall sub_230e386aAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'You don't own that cat!'
    if balanceOf[msg.sender] < sub_605d18a0:
        revert with 0, 'You don't have enough kGOLD!'
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < sub_605d18a0:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= sub_605d18a0
    if totalSupply < sub_605d18a0:
        revert with 0, 17
    totalSupply -= sub_605d18a0
    emit Transfer(sub_605d18a0, msg.sender, 0);
    require ext_code.size(sub_c22737fdAddress)
    call sub_c22737fdAddress.0x592093a2 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xfe238234: msg.sender, sub_605d18a0
    stor6 = 1
}

function sub_49a24fe8(?) payable {
    require calldata.size - 4 >= 32
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    if not sub_273ddf35:
        revert with 0, 18
    if arg1 % sub_273ddf35:
        revert with 0, 'Invalid amount entered!'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(sub_1c1a1a17Address)
    staticcall sub_1c1a1a17Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 10^18 * arg1:
        revert with 0, 'You don't have enough cMILK!'
    if arg1 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    require ext_code.size(sub_1c1a1a17Address)
    call sub_1c1a1a17Address.0x9dc29fac with:
         gas gas_remaining wei
        args msg.sender, 10^18 * arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_273ddf35:
        revert with 0, 18
    if arg1 / sub_273ddf35 and sub_f5e5a794 > -1 / arg1 / sub_273ddf35:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !(arg1 / sub_273ddf35 * sub_f5e5a794):
        revert with 0, 17
    totalSupply += arg1 / sub_273ddf35 * sub_f5e5a794
    if balanceOf[address(msg.sender)] > !(arg1 / sub_273ddf35 * sub_f5e5a794):
        revert with 0, 17
    balanceOf[address(msg.sender)] += arg1 / sub_273ddf35 * sub_f5e5a794
    emit Transfer((arg1 / sub_273ddf35 * sub_f5e5a794), 0, msg.sender);
    emit 0x6725a436: msg.sender, arg1
    stor6 = 1
}

function sub_973f9b5c(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 4).length) + 97 < 96 or floor32(('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if floor32(('cd', 36).length) + 98 < 97 or floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[floor32(('cd', 4).length) + 97] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    idx = 0
    s = cd[36] + 36
    t = floor32(('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Mismatching array lengths!'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= mem[96]:
            revert with 0, 50
        _54 = mem[(32 * idx) + 128]
        if idx >= mem[floor32(('cd', 4).length) + 97]:
            revert with 0, 50
        _56 = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
            revert with 0, 17
        totalSupply += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 0
        if balanceOf[mem[(32 * idx) + 140 len 20]] > !mem[(32 * idx) + floor32(('cd', 4).length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        mem[floor32(('cd', 4).length) + floor32(('cd', 36).length) + 98] = mem[(32 * idx) + floor32(('cd', 4).length) + 129]
        emit Transfer(_56, 0, address(_54));
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_1f9a4023(?) payable {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_b898045cAddress)
    staticcall sub_b898045cAddress.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= _6 + (32 * _7) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _7] = mem[_6 + 128 len 32 * _7]
    if _7 <= 0:
        revert with 0, 'You don't have any Burrata!'
    idx = 0
    while idx < _7:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _48 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xb49fa4bf00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _48
        require ext_code.size(sub_b898045cAddress)
        call sub_b898045cAddress.0xb49fa4bf with:
             gas gas_remaining wei
            args _48
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_7a3f2625 and mem[ceil32(return_data.size) + 96] > -1 / sub_7a3f2625:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !(sub_7a3f2625 * mem[ceil32(return_data.size) + 96]):
        revert with 0, 17
    totalSupply += sub_7a3f2625 * mem[ceil32(return_data.size) + 96]
    if balanceOf[address(msg.sender)] > !(sub_7a3f2625 * mem[ceil32(return_data.size) + 96]):
        revert with 0, 17
    balanceOf[address(msg.sender)] += sub_7a3f2625 * mem[ceil32(return_data.size) + 96]
    mem[mem[64]] = sub_7a3f2625 * mem[ceil32(return_data.size) + 96]
    emit Transfer(mem[mem[64]], 0, msg.sender);
    emit 0xd7f62ac3: msg.sender, mem[ceil32(return_data.size) + 96]
    stor6 = 1
}

function sub_167ea58c(?) payable {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_14e20981Address)
    staticcall sub_14e20981Address.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= _6 + (32 * _7) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _7] = mem[_6 + 128 len 32 * _7]
    if _7 <= 0:
        revert with 0, 'You don't have any Parmesan!'
    idx = 0
    while idx < _7:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _48 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xb49fa4bf00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _48
        require ext_code.size(sub_14e20981Address)
        call sub_14e20981Address.0xb49fa4bf with:
             gas gas_remaining wei
            args _48
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_f33bf4ca and mem[ceil32(return_data.size) + 96] > -1 / sub_f33bf4ca:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !(sub_f33bf4ca * mem[ceil32(return_data.size) + 96]):
        revert with 0, 17
    totalSupply += sub_f33bf4ca * mem[ceil32(return_data.size) + 96]
    if balanceOf[address(msg.sender)] > !(sub_f33bf4ca * mem[ceil32(return_data.size) + 96]):
        revert with 0, 17
    balanceOf[address(msg.sender)] += sub_f33bf4ca * mem[ceil32(return_data.size) + 96]
    mem[mem[64]] = sub_f33bf4ca * mem[ceil32(return_data.size) + 96]
    emit Transfer(mem[mem[64]], 0, msg.sender);
    emit 0x7f15b4da: msg.sender, mem[ceil32(return_data.size) + 96]
    stor6 = 1
}

function sub_1bda88e5(?) payable {
    if stor6 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor6 = 2
    mem[96] = 0x438b630000000000000000000000000000000000000000000000000000000000
    mem[100] = msg.sender
    require ext_code.size(sub_ba73dc17Address)
    staticcall sub_ba73dc17Address.walletOfOwner(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96 len 4], Mask(224, 32, msg.sender) >> 32
    require mem[96 len 4], Mask(224, 32, msg.sender) >> 32 <= test266151307()
    require return_data.size + 96 > mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 127
    _7 = mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]
    if mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96] > test266151307():
        revert with 0, 65
    if floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 1 < 0 or ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, msg.sender) >> 32 + 96]) + 97
    mem[ceil32(return_data.size) + 96] = _7
    require return_data.size >= _6 + (32 * _7) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _7] = mem[_6 + 128 len 32 * _7]
    if _7 <= 0:
        revert with 0, 'You don't have any Dolcelatte!'
    idx = 0
    while idx < _7:
        if idx >= mem[ceil32(return_data.size) + 96]:
            revert with 0, 50
        _48 = mem[(32 * idx) + ceil32(return_data.size) + 128]
        mem[mem[64]] = 0xb49fa4bf00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = _48
        require ext_code.size(sub_ba73dc17Address)
        call sub_ba73dc17Address.0xb49fa4bf with:
             gas gas_remaining wei
            args _48
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if sub_f474cbe7 and mem[ceil32(return_data.size) + 96] > -1 / sub_f474cbe7:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > !(sub_f474cbe7 * mem[ceil32(return_data.size) + 96]):
        revert with 0, 17
    totalSupply += sub_f474cbe7 * mem[ceil32(return_data.size) + 96]
    if balanceOf[address(msg.sender)] > !(sub_f474cbe7 * mem[ceil32(return_data.size) + 96]):
        revert with 0, 17
    balanceOf[address(msg.sender)] += sub_f474cbe7 * mem[ceil32(return_data.size) + 96]
    mem[mem[64]] = sub_f474cbe7 * mem[ceil32(return_data.size) + 96]
    emit Transfer(mem[mem[64]], 0, msg.sender);
    emit 0x66ec8eb6: msg.sender, mem[ceil32(return_data.size) + 96]
    stor6 = 1
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
        if ceil32(stor3.length.field_1) > stor3.length.field_1:
            mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length.field_1), data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
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
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if bool(stor4.length):
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
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
                    return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
        if ceil32(stor4.length.field_1) > stor4.length.field_1:
            mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length.field_1), data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
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
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}



}
