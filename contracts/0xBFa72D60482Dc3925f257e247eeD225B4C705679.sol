contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
uint256 sub_683f0b84;
uint256 sub_b9ab7e7c;
uint256 sub_e3ec3c5f;
uint256 sub_0788af29;
array of address sub_ec1b3903;

function sub_0788af29(?) {
    return sub_0788af29
}

function sub_683f0b84(?) {
    return sub_683f0b84
}

function owner() {
    return owner
}

function sub_b9ab7e7c(?) {
    return sub_b9ab7e7c
}

function getLockerCount() {
    return sub_ec1b3903.length
}

function sub_e3ec3c5f(?) {
    return sub_e3ec3c5f
}

function sub_ec1b3903(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_ec1b3903.length
    return sub_ec1b3903[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function sub_0b8bc6ce(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b9ab7e7c = arg1
}

function sub_56cf89a3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_683f0b84 = arg1
}

function changeFeePerc(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e3ec3c5f = arg1
}

function sub_b517da2d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = address(arg1)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_1dd0042f(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(stor1)
    staticcall stor1.0xb17b6394 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    call ext_call.return_data[12 len 20] with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a034cf8b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_63a4f2f2(?) {
    if sub_ec1b3903.length > test266151307():
        revert with 0, 65
    mem[96] = sub_ec1b3903.length
    mem[64] = (32 * sub_ec1b3903.length) + 128
    if sub_ec1b3903.length:
        mem[128 len 32 * sub_ec1b3903.length] = call.data[calldata.size len 32 * sub_ec1b3903.length]
    idx = 0
    while idx < sub_ec1b3903.length:
        mem[0] = 6
        if idx >= sub_ec1b3903.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = sub_ec1b3903[idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * sub_ec1b3903.length) + 128] = 32
    mem[(32 * sub_ec1b3903.length) + 160] = sub_ec1b3903.length
    s = 0
    s = mem[64] + 64
    t = 128
    while sub_ec1b3903.length < sub_ec1b3903.length:
        mem[s] = mem[t + 12 len 20]
        s = sub_ec1b3903.length + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_f87f7144(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg6 == bool(arg6)
    if arg4 <= 0:
        revert with 0, 'can't lock 0 Tokens'
    if arg6:
        if msg.value < sub_683f0b84:
            revert with 0, 'err : Please pay the price'
        require ext_code.size(stor1)
        staticcall stor1.0xb17b6394 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call ext_call.return_data[12 len 20] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_0788af29 > !sub_683f0b84:
            revert with 0, 17
        sub_0788af29 += sub_683f0b84
    require ext_code.size(stor1)
    call stor1.0x47978e0d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    create contract with 0 wei
                    code: code.data[14047 len 6766], address(arg1), arg2, ext_call.return_data[0], stor1, arg4, arg5, bool(arg6), sub_e3ec3c5f
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Entry failed due to failed transfer.'
    require ext_code.size(stor1)
    call stor1.0x13473178 with:
         gas gas_remaining wei
        args address(arg1), arg2, address(create.new_address), Array(len=arg3.length, data=arg3[all]), arg5, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ec1b3903.length++
    sub_ec1b3903[sub_ec1b3903.length] = address(create.new_address)
    return address(create.new_address)
}

function sub_dbc50686(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    require arg7 == bool(arg7)
    if arg5 <= 0:
        revert with 0, 'can't lock 0 Tokens'
    if address(arg1) == address(arg2):
        revert with 0, 'Cant get the same Token as Reward - due security'
    if arg7:
        if msg.value < sub_b9ab7e7c:
            revert with 0, 'err : Please pay the price'
        require ext_code.size(stor1)
        staticcall stor1.0xb17b6394 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        call ext_call.return_data[12 len 20] with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_0788af29 > !sub_b9ab7e7c:
            revert with 0, 17
        sub_0788af29 += sub_b9ab7e7c
    require ext_code.size(stor1)
    call stor1.0x47978e0d with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    create contract with 0 wei
                    code: code.data[5583 len 8464], address(arg1), address(arg2), arg3, ext_call.return_data[0], stor1, arg5, arg6, bool(arg7), sub_e3ec3c5f
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(arg1))
    call address(arg1).transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Entry failed due to failed transfer.'
    require ext_code.size(stor1)
    call stor1.0x13473178 with:
         gas gas_remaining wei
        args address(arg1), arg3, address(create.new_address), Array(len=arg4.length, data=arg4[all]), arg6, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_ec1b3903.length++
    sub_ec1b3903[sub_ec1b3903.length] = address(create.new_address)
    return address(create.new_address)
}



}
