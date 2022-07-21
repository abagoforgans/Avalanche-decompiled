contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_e8cb0223;
uint256 sub_a33a171f;
uint256 stor3;
address depositorAddress;
address joeAddress;
address sub_50ed1471Address;
address sub_b76ae05eAddress;
address sub_9e928435Address;
address sub_6b9e3570Address;
address sub_6385c4d3Address;

function sub_50ed1471(?) payable {
    return sub_50ed1471Address
}

function sub_6385c4d3(?) payable {
    return sub_6385c4d3Address
}

function sub_6b9e3570(?) payable {
    return sub_6b9e3570Address
}

function owner() payable {
    return owner
}

function sub_9e928435(?) payable {
    return sub_9e928435Address
}

function sub_a33a171f(?) payable {
    return sub_a33a171f
}

function sub_b76ae05e(?) payable {
    return sub_b76ae05eAddress
}

function joe() payable {
    return joeAddress
}

function depositor() payable {
    return depositorAddress
}

function sub_e8cb0223(?) payable {
    return sub_e8cb0223
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

function sub_4ebca8c5(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e8cb0223 = arg1
}

function sub_c6144871(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_a33a171f = arg1
}

function setDepositor(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    depositorAddress = arg1
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

function sub_ebcffbbe(?) payable {
    require ext_code.size(sub_b76ae05eAddress)
    staticcall sub_b76ae05eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] and stor3 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    if not sub_e8cb0223:
        revert with 0, 18
    return (ext_call.return_data[0] * stor3 / sub_e8cb0223)
}

function sub_9d3506df(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    mem[100] = this.address
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(arg1)):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call address(arg1) with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
}

function deposit(uint256 arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 == arg3
    mem[100] = this.address
    require ext_code.size(sub_b76ae05eAddress)
    staticcall sub_b76ae05eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 0 < arg1:
            revert with 0, 'Not enough VTX in contract'
    else:
        if ext_call.return_data[0] and stor3 > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if not sub_e8cb0223:
            revert with 0, 18
        if ext_call.return_data[0] * stor3 / sub_e8cb0223 < arg1:
            revert with 0, 'Not enough VTX in contract'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = arg1
    mem[ceil32(return_data.size) + 96] = 100
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(return_data.size) + 228] = 32
    mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(joeAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0
    mem[ceil32(return_data.size) + 392] = 0
    call joeAddress with:
       funct Mask(32, 224, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1, 0) << 544)
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
        mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
            if not mem[ceil32(return_data.size) + 324]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    require ext_code.size(joeAddress)
    call joeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args depositorAddress, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(depositorAddress)
    if not arg3:
        call depositorAddress.depositFor(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1, msg.sender
    else:
        call depositorAddress.depositFor(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args arg1, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_50ed1471Address)
        staticcall sub_50ed1471Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_50ed1471Address)
        call sub_50ed1471Address.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args sub_6385c4d3Address, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(sub_6385c4d3Address)
        call sub_6385c4d3Address.depositFor(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 and sub_e8cb0223 > -1 / arg1:
        revert with 0, 17
    if not stor3:
        revert with 0, 18
    if arg1 * sub_e8cb0223 / stor3 and sub_a33a171f > -1 / arg1 * sub_e8cb0223 / stor3:
        revert with 0, 17
    if not stor3:
        revert with 0, 18
    require ext_code.size(sub_b76ae05eAddress)
    call sub_b76ae05eAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_6b9e3570Address, arg1 * sub_e8cb0223 / stor3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_6b9e3570Address)
    call sub_6b9e3570Address.depositFor(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args arg1 * sub_e8cb0223 / stor3, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_9e928435Address)
    call sub_9e928435Address.0x7ce92844 with:
         gas gas_remaining wei
        args sub_b76ae05eAddress, arg1 * sub_e8cb0223 / stor3 * sub_a33a171f / stor3, arg2, msg.sender, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
