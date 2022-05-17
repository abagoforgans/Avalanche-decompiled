contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor3;
array of struct stor4;
address owner;
mapping of uint8 stor6;
uint256 sub_cb4d6eb0;
address sub_4c1a0012Address;
address sub_a66aa40dAddress;
address sub_6a78a216Address;
uint256 sub_e05c9956;
uint256 sub_ab0b9d26;
uint256 sub_2de16cf2;
uint256 sub_5b73e1a8;
uint256 sub_6ae2bbfe;

function totalSupply() payable {
    return totalSupply
}

function sub_2de16cf2(?) payable {
    return sub_2de16cf2
}

function sub_4c1a0012(?) payable {
    return sub_4c1a0012Address
}

function sub_5b73e1a8(?) payable {
    return sub_5b73e1a8
}

function sub_6a78a216(?) payable {
    return sub_6a78a216Address
}

function sub_6ae2bbfe(?) payable {
    return sub_6ae2bbfe
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function sub_a66aa40d(?) payable {
    return sub_a66aa40dAddress
}

function sub_ab0b9d26(?) payable {
    return sub_ab0b9d26
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function sub_cb4d6eb0(?) payable {
    return sub_cb4d6eb0
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_e05c9956(?) payable {
    return sub_e05c9956
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

function sub_1f6dc8ee(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e05c9956 = arg1
}

function sub_57545a67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ab0b9d26 = arg1
}

function sub_ce78f4d7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_cb4d6eb0 = arg1
}

function sub_e070d619(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_2de16cf2 = arg1
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    stor6[address(arg1)] = 1
}

function removeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1
    require arg1 != msg.sender
    stor6[address(arg1)] = 0
}

function sub_00f75f7c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 < 100:
        revert with 0, 'Kg must be inthe right format'
    if arg1 / 100 and sub_6ae2bbfe > -1 / arg1 / 100:
        revert with 'NH{q', 17
    if sub_5b73e1a8 > (-1 * arg1 / 100 * sub_6ae2bbfe) - 1:
        revert with 'NH{q', 17
    return (sub_5b73e1a8 + (arg1 / 100 * sub_6ae2bbfe))
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

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_f692a738(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    if totalSupply + arg2 >= sub_cb4d6eb0:
        revert with 0, 'OVER MAX SUPPLY'
    if not address(arg1):
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -arg2 - 1:
        revert with 'NH{q', 17
    totalSupply += arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, address(arg1));
    emit Minted(address(arg1), arg2);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: decreased allowance below zero'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_1bf4d233(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'NEED EGG'
    require ext_code.size(sub_6a78a216Address)
    staticcall sub_6a78a216Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'NOT ENOUGH EGG'
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0x1e54ad00 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 and sub_2de16cf2 > -1 / arg1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > (-1 * arg1 * sub_2de16cf2) - 1:
        revert with 'NH{q', 17
    totalSupply += arg1 * sub_2de16cf2
    if balanceOf[address(msg.sender)] > (-1 * arg1 * sub_2de16cf2) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] += arg1 * sub_2de16cf2
    emit Transfer((arg1 * sub_2de16cf2), 0, msg.sender);
    if arg1 and sub_2de16cf2 > -1 / arg1:
        revert with 'NH{q', 17
    emit 0x3710a8e3: msg.sender, arg1 * sub_2de16cf2
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if balanceOf[address(arg1)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds balance'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer amount exceeds allowance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_605fba67(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x3ed2f772 with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'NOT STAKED'
    if block.timestamp < ext_call.return_data[64]:
        revert with 'NH{q', 17
    if block.timestamp - ext_call.return_data[64] and 10^10 > -1 / block.timestamp - ext_call.return_data[64]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] and sub_ab0b9d26 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 > -1 / ext_call.return_data[32] * sub_ab0b9d26:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 and sub_e05c9956 > -1 / ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600:
        revert with 'NH{q', 17
    if ext_call.return_data[96] > -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
        revert with 'NH{q', 17
    return (ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10))
}

function sub_36d1f8a1(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    if arg2 <= 0:
        revert with 0, 'MUST BE MORE THAN 0'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'NOT ENOUGH FEED'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0xacad41a4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    if not ext_call.return_data[0]:
        revert with 0, 'NOT STAKED'
    if not msg.sender:
        revert with 0, 'ERC20: burn from the zero address'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ERC20: burn amount exceeds balance'
    balanceOf[address(msg.sender)] -= arg2
    if totalSupply < arg2:
        revert with 'NH{q', 17
    totalSupply -= arg2
    emit Transfer(arg2, msg.sender, 0);
    emit Burned(msg.sender, arg2);
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0x36d1f8a1 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function levelup(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0xacad41a4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    if not ext_call.return_data[0]:
        revert with 0, 'NOT STAKED'
    if ext_call.return_data[128] < ext_call.return_data[160]:
        revert with 0, 'NOT READY'
    if block.timestamp < ext_call.return_data[192]:
        revert with 0, 'COOLING OFF NOT MET'
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0xb2a873f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0xf8645753 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_call.return_data[32] > -101:
        revert with 'NH{q', 17
    require ext_code.size(sub_4c1a0012Address)
    call sub_4c1a0012Address.0xf33d627f with:
         gas gas_remaining wei
        args arg1, ext_call.return_data[32] + 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_06125cb9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_4c1a0012Address)
    staticcall sub_4c1a0012Address.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'NOT OWNER'
    require ext_code.size(sub_6a78a216Address)
    staticcall sub_6a78a216Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg2:
        revert with 0, 'NOT ENOUGH EGG IN WALLET'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0xacad41a4 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 224
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    require ext_call.return_data[160] == ext_call.return_data[160]
    require ext_call.return_data[192] == ext_call.return_data[192]
    if not ext_call.return_data[0]:
        revert with 0, 'NOT STAKED'
    if ext_call.return_data[32] < 100:
        revert with 0, 'Kg must be inthe right format'
    if ext_call.return_data[32] / 100 and sub_6ae2bbfe > -1 / ext_call.return_data[32] / 100:
        revert with 'NH{q', 17
    if sub_5b73e1a8 > (-1 * ext_call.return_data[32] / 100 * sub_6ae2bbfe) - 1:
        revert with 'NH{q', 17
    if arg2 < sub_5b73e1a8 + (ext_call.return_data[32] / 100 * sub_6ae2bbfe):
        revert with 0, 'NOT ENOUGH EGG'
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0x1e54ad00 with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xae478d96: msg.sender, arg2
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0x4e3394a4 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawEgg(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'MUST BE MORE THAN 0'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x3ed2f772 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'NOT STAKED'
    if arg1 > ext_call.return_data[32]:
        revert with 0, 'OVERDRAWN'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x3ed2f772 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'NOT STAKED'
    if block.timestamp < ext_call.return_data[64]:
        revert with 'NH{q', 17
    if block.timestamp - ext_call.return_data[64] and 10^10 > -1 / block.timestamp - ext_call.return_data[64]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] and sub_ab0b9d26 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 > -1 / ext_call.return_data[32] * sub_ab0b9d26:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 and sub_e05c9956 > -1 / ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600:
        revert with 'NH{q', 17
    if ext_call.return_data[96] > -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[32] < arg1:
        revert with 'NH{q', 17
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0xfaf54308 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[32] - arg1, ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 and 11 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0x75752291 with:
         gas gas_remaining wei
        args msg.sender, 11 * arg1 / 12
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xd63943f6: msg.sender, 11 * arg1 / 12
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor3.length):
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
        revert with 'NH{q', 34
    if bool(stor3.length):
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
        if bool(stor4.length):
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 'NH{q', 34
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
                revert with 'NH{q', 34
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
        revert with 'NH{q', 34
    if bool(stor4.length):
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 'NH{q', 34
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
            revert with 'NH{q', 34
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

function staking(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 <= 0:
        revert with 0, 'NEED EGG'
    require ext_code.size(sub_6a78a216Address)
    staticcall sub_6a78a216Address.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < arg1:
        revert with 0, 'NOT ENOUGH EGG'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x3ed2f772 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_code.size(sub_a66aa40dAddress)
    if ext_call.return_data[32] <= 0:
        call sub_a66aa40dAddress.0xfaf54308 with:
             gas gas_remaining wei
            args msg.sender, arg1, 0
    else:
        staticcall sub_a66aa40dAddress.0x3ed2f772 with:
                gas gas_remaining wei
               args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_call.return_data[32] == ext_call.return_data[32]
        require ext_call.return_data[64] == ext_call.return_data[64]
        require ext_call.return_data[96] == ext_call.return_data[96]
        if not ext_call.return_data[12 len 20]:
            revert with 0, 'NOT STAKED'
        if block.timestamp < ext_call.return_data[64]:
            revert with 'NH{q', 17
        if block.timestamp - ext_call.return_data[64] and 10^10 > -1 / block.timestamp - ext_call.return_data[64]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] and sub_ab0b9d26 > -1 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 > -1 / ext_call.return_data[32] * sub_ab0b9d26:
            revert with 'NH{q', 17
        if ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 and sub_e05c9956 > -1 / ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600:
            revert with 'NH{q', 17
        if ext_call.return_data[96] > -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        if arg1 > -ext_call.return_data[32] - 1:
            revert with 'NH{q', 17
        require ext_code.size(sub_a66aa40dAddress)
        call sub_a66aa40dAddress.0xfaf54308 with:
             gas gas_remaining wei
            args msg.sender, arg1 + ext_call.return_data[32], ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_6a78a216Address)
    call sub_6a78a216Address.0x1e54ad00 with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x5cf496bc: msg.sender, arg1
}

function sub_8506b82a(?) payable {
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x3ed2f772 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'NOT STAKED'
    if block.timestamp < ext_call.return_data[64]:
        revert with 'NH{q', 17
    if block.timestamp - ext_call.return_data[64] and 10^10 > -1 / block.timestamp - ext_call.return_data[64]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] and sub_ab0b9d26 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 > -1 / ext_call.return_data[32] * sub_ab0b9d26:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 and sub_e05c9956 > -1 / ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600:
        revert with 'NH{q', 17
    if ext_call.return_data[96] > -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) <= 0:
        revert with 0, 'NO FEED TO CLAIM'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x3ed2f772 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if totalSupply > -ext_call.return_data[96] + -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
        revert with 'NH{q', 17
    if totalSupply + ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) >= sub_cb4d6eb0:
        revert with 0, 'OVER MAX SUPPLY'
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0xfaf54308 with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[32], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC20: mint to the zero address'
    if totalSupply > -ext_call.return_data[96] + -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
        revert with 'NH{q', 17
    totalSupply = totalSupply + ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10)
    if balanceOf[address(msg.sender)] > -ext_call.return_data[96] + -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10)
    emit Transfer((ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10)), 0, msg.sender);
    emit Minted(msg.sender, ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10));
}

function sub_0b2a873f(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x33873913 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = idx
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0xdd2dccfb with:
                gas gas_remaining wei
               args idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _44 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _45 = mem[_44]
        require mem[_44] == mem[_44 + 12 len 20]
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0x3ed2f772 with:
                gas gas_remaining wei
               args address(mem[_44])
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _48 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_48] == mem[_48 + 12 len 20]
        _50 = mem[_48 + 32]
        require mem[_48 + 32] == mem[_48 + 32]
        _51 = mem[_48 + 64]
        require mem[_48 + 64] == mem[_48 + 64]
        _52 = mem[_48 + 96]
        require mem[_48 + 96] == mem[_48 + 96]
        if not mem[_48 + 12 len 20]:
            revert with 0, 'NOT STAKED'
        if block.timestamp < mem[_48 + 64]:
            revert with 'NH{q', 17
        if block.timestamp - mem[_48 + 64] and 10^10 > -1 / block.timestamp - mem[_48 + 64]:
            revert with 'NH{q', 17
        if mem[_48 + 32] and sub_ab0b9d26 > -1 / mem[_48 + 32]:
            revert with 'NH{q', 17
        if mem[_48 + 32] * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * mem[_48 + 64]) / 24 * 3600 > -1 / mem[_48 + 32] * sub_ab0b9d26:
            revert with 'NH{q', 17
        if mem[_48 + 32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * mem[_48 + 64]) / 24 * 3600 and sub_e05c9956 > -1 / mem[_48 + 32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * mem[_48 + 64]) / 24 * 3600:
            revert with 'NH{q', 17
        if mem[_48 + 96] > -(mem[_48 + 32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * mem[_48 + 64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        require ext_code.size(sub_a66aa40dAddress)
        staticcall sub_a66aa40dAddress.0x3ed2f772 with:
                gas gas_remaining wei
               args address(_45)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _57 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        require mem[_57] == mem[_57 + 12 len 20]
        _59 = mem[_57 + 32]
        require mem[_57 + 32] == mem[_57 + 32]
        require mem[_57 + 64] == mem[_57 + 64]
        require mem[_57 + 96] == mem[_57 + 96]
        _62 = mem[64]
        mem[64] = mem[64] + 64
        mem[_62] = 16
        mem[_62 + 32] = 'pendingClaim-++ '
        _63 = mem[64]
        mem[mem[64] + 36] = 96
        mem[mem[64] + 132] = 16
        s = 0
        while s < 16:
            mem[mem[64] + s + 164] = mem[_62 + s + 32]
            s = s + 32
            continue 
        mem[mem[64] + 180] = 0
        mem[mem[64] + 68] = address(_45)
        mem[mem[64] + 100] = _52 + (_50 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * _51) / 24 * 3600 * sub_e05c9956 / 10^10)
        _78 = mem[64]
        mem[mem[64]] = 164
        mem[64] = mem[64] + 196
        mem[_78 + 32] = mem[_78 + 36 len 28] or 0x7c8121700000000000000000000000000000000000000000000000000000000
        staticcall 'console.log'.mem[_78 + 32 len 4] with:
                gas gas_remaining wei
               args mem[_78 + 36 len mem[_78] - 4]
        mem[_63 + 196] = 0xfaf5430800000000000000000000000000000000000000000000000000000000
        mem[_63 + 200] = address(_45)
        mem[_63 + 232] = _59
        mem[_63 + 264] = _52 + (_50 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * _51) / 24 * 3600 * sub_e05c9956 / 10^10)
        require ext_code.size(sub_a66aa40dAddress)
        call sub_a66aa40dAddress.0xfaf54308 with:
             gas gas_remaining wei
            args address(_45), _59, _52 + (_50 * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * _51) / 24 * 3600 * sub_e05c9956 / 10^10)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
}

function sub_88c00a58(?) payable {
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x3ed2f772 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'NOT STAKED'
    require ext_code.size(sub_a66aa40dAddress)
    staticcall sub_a66aa40dAddress.0x3ed2f772 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'NOT STAKED'
    if block.timestamp < ext_call.return_data[64]:
        revert with 'NH{q', 17
    if block.timestamp - ext_call.return_data[64] and 10^10 > -1 / block.timestamp - ext_call.return_data[64]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] and sub_ab0b9d26 > -1 / ext_call.return_data[32]:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * sub_ab0b9d26 and (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 > -1 / ext_call.return_data[32] * sub_ab0b9d26:
        revert with 'NH{q', 17
    if ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 and sub_e05c9956 > -1 / ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600:
        revert with 'NH{q', 17
    if ext_call.return_data[96] > -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
        revert with 'NH{q', 17
    if ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) > 0:
        if totalSupply > -ext_call.return_data[96] + -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        if totalSupply + ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) >= sub_cb4d6eb0:
            revert with 0, 'OVER MAX SUPPLY'
        if not msg.sender:
            revert with 0, 'ERC20: mint to the zero address'
        if totalSupply > -ext_call.return_data[96] + -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        totalSupply = totalSupply + ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10)
        if balanceOf[address(msg.sender)] > -ext_call.return_data[96] + -(ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10) - 1:
            revert with 'NH{q', 17
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10)
        emit Transfer((ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10)), 0, msg.sender);
        emit Minted(msg.sender, ext_call.return_data[96] + (ext_call.return_data[32] * sub_ab0b9d26 * (10^10 * block.timestamp) - (10^10 * ext_call.return_data[64]) / 24 * 3600 * sub_e05c9956 / 10^10));
    if ext_call.return_data[32] > 0:
        if ext_call.return_data[32] and 11 > -1 / ext_call.return_data[32]:
            revert with 'NH{q', 17
        require ext_code.size(sub_6a78a216Address)
        call sub_6a78a216Address.0x75752291 with:
             gas gas_remaining wei
            args msg.sender, 11 * ext_call.return_data[32] / 12
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit 0xd63943f6: msg.sender, 11 * ext_call.return_data[32] / 12
    require ext_code.size(sub_a66aa40dAddress)
    call sub_a66aa40dAddress.0x7ed25850 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
