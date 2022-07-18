contract main {




// =====================  Runtime code  =====================


#
#  - sub_f90044ec(?)
#
address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of address sub_ec686704;
mapping of address sub_0d43d992;
mapping of uint256 sub_3a20dd52;
uint8 paused;

function sub_0b4f43c1(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return bool(stor1[arg1][arg2])
}

function sub_0d43d992(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_0d43d992[arg1][arg2]
}

function sub_3a20dd52(?) {
    require calldata.size - 4 >= 32
    return sub_3a20dd52[arg1]
}

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function sub_a86894ca(?) {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function sub_ec686704(?) {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    return sub_ec686704[arg1][arg2]
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

function setSwapFee(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_3a20dd52[arg1] = arg2
}

function setPaused(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paused = uint8(arg1)
}

function withdrawFees() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_e5bed411(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xf2fde38b with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_5ba3911a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).setBaseURI(string arg1) with:
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_de5ff76b(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(address(arg1))
    call address(arg1).setTokenURI(uint256 arg1, string arg2) with:
         gas gas_remaining wei
        args arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4abfdfb6(?) {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == address(cd[68])
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
        mem[100] = this.address
        mem[132] = address(cd[68])
        mem[164] = cd[((32 * idx) + cd[36] + 36)]
        require ext_code.size(address(cd[4]))
        call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(this.address), address(cd[68]), cd[((32 * idx) + cd[36] + 36)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_caa1811b(?) {
    require calldata.size - 4 >= 224
    require arg2 == address(arg2)
    require arg4 == address(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + arg7.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Bridge is currently offline'
    if sub_ec686704[arg3][address(arg2)]:
        revert with 0, 'A721.721.2.1', 0
    if address(arg4):
        sub_ec686704[arg3][address(arg2)] = address(arg4)
        sub_0d43d992[arg3][address(arg4)] = address(arg2)
        mem[ceil32(arg7.length) + 288] = arg6.length
        mem[ceil32(arg7.length) + 320 len arg6.length] = arg6[all]
        mem[ceil32(arg7.length) + arg6.length + 320] = 0
        emit 0xf7346649: arg3, 96, ceil32(arg7.length) + 128, arg7.length, arg7[all], 0, mem[arg7.length + 320 len ceil32(arg7.length) + ceil32(arg6.length) - arg7.length], arg1, address(arg2), address(arg4)
    else:
        mem[160 len 10014] = code.data[9177 len 10014]
        mem[10174] = 64
        mem[10238] = arg6.length
        mem[10270 len arg6.length] = arg6[all]
        mem[arg6.length + 10270] = 0
        mem[10206] = ceil32(arg6.length) + 96
        mem[ceil32(arg6.length) + 10270] = arg7.length
        mem[ceil32(arg6.length) + 10302 len arg7.length] = arg7[all]
        mem[ceil32(arg6.length) + arg7.length + 10302] = 0
        create contract with 0 wei
                        code: code.data[9177 len 10014], 64, ceil32(arg6.length) + 96, arg6.length, arg6[all], 0, mem[arg6.length + 10302 len ceil32(arg6.length) + ceil32(arg7.length) - arg6.length]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        if arg5.length:
            mem[228 len arg5.length] = arg5[all]
            mem[arg5.length + 228] = 0
            require ext_code.size(address(create.new_address))
            call address(create.new_address).setBaseURI(string arg1) with:
                 gas gas_remaining wei
                args Array(len=arg5.length, data=arg5[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        sub_ec686704[arg3][address(arg2)] = address(create.new_address)
        sub_0d43d992[arg3][address(create.new_address)] = address(arg2)
        mem[ceil32(arg7.length) + 288] = arg6.length
        mem[ceil32(arg7.length) + 320 len arg6.length] = arg6[all]
        mem[ceil32(arg7.length) + arg6.length + 320] = 0
        emit 0xf7346649: arg3, 96, ceil32(arg7.length) + 128, arg7.length, arg7[all], 0, mem[arg7.length + 320 len ceil32(arg7.length) + ceil32(arg6.length) - arg7.length], arg1, address(arg2), address(create.new_address)
}

function sub_7dcde2aa(?) payable {
    require calldata.size - 4 >= 128
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if paused:
        revert with 0, 'Bridge is currently offline'
    if not ('cd', 68).length:
        revert with 0, 'No tokens are provided'
    if not address(cd[36]):
        revert with 0, 'Recipient cannot be null address'
    if sub_3a20dd52[cd[100]] and ('cd', 68).length > -1 / sub_3a20dd52[cd[100]]:
        revert with 0, 17
    if msg.value < sub_3a20dd52[cd[100]] * ('cd', 68).length:
        revert with 0, 'Insufficient fee provided'
    if msg.value:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if stor1[cd[100]][address(cd[4])]:
        idx = 0
        while idx < ('cd', 68).length:
            mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            mem[132] = this.address
            mem[164] = cd[((32 * idx) + cd[68] + 36)]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[((32 * idx) + cd[68] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        emit 0x1dab3f70: cd[100], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length]), address(cd[4]), msg.sender, address(cd[36])
    else:
        if not sub_0d43d992[cd[100]][address(cd[4])]:
            revert with 0, 'A721.721.3.1', 0
        idx = 0
        while idx < ('cd', 68).length:
            mem[96] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[100] = msg.sender
            mem[132] = this.address
            mem[164] = cd[((32 * idx) + cd[68] + 36)]
            require ext_code.size(address(cd[4]))
            call address(cd[4]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), cd[((32 * idx) + cd[68] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        emit 0x36dcd603: cd[100], sub_0d43d992[cd[100]][address(cd[4])], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length]), address(cd[4]), msg.sender, address(cd[36])
}

function sub_7bcd99b3(?) {
    require calldata.size - 4 >= 160
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        revert with 0, 'Bridge is currently offline'
    mem[64] = 160
    mem[96] = 12
    mem[128] = 'A721.721.4.1' << 160
    if stor2[cd[4]]:
        revert with 0, 'A721.721.4.1', 0
    if not address(cd[68]):
        revert with 0, 'Recipient cannot be null address'
    stor2[cd[4]] = 1
    mem[0] = address(cd[36])
    mem[32] = sha3(cd[100], 3)
    if sub_ec686704[cd[100]][address(cd[36])]:
        idx = 0
        while idx < ('cd', 132).length:
            mem[mem[64] + 4] = cd[((32 * idx) + cd[132] + 36)]
            require ext_code.size(sub_ec686704[cd[100]][address(cd[36])])
            staticcall sub_ec686704[cd[100]][address(cd[36])].ownerOf(uint256 arg1) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + cd[132] + 36)]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                if idx >= ('cd', 132).length:
                    revert with 0, 50
                mem[mem[64]] = 0xa144819400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[68])
                mem[mem[64] + 36] = cd[((32 * idx) + cd[132] + 36)]
                require ext_code.size(sub_ec686704[cd[100]][address(cd[36])])
                call sub_ec686704[cd[100]][address(cd[36])].safeMint(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), cd[((32 * idx) + cd[132] + 36)]
            else:
                _49 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_49] == mem[_49 + 12 len 20]
                if idx >= ('cd', 132).length:
                    revert with 0, 50
                if not mem[_49 + 12 len 20]:
                    mem[mem[64]] = 0xa144819400000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(cd[68])
                    mem[mem[64] + 36] = cd[((32 * idx) + cd[132] + 36)]
                    require ext_code.size(sub_ec686704[cd[100]][address(cd[36])])
                    call sub_ec686704[cd[100]][address(cd[36])].safeMint(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[68]), cd[((32 * idx) + cd[132] + 36)]
                else:
                    mem[mem[64]] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = this.address
                    mem[mem[64] + 36] = address(cd[68])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[132] + 36)]
                    require ext_code.size(sub_ec686704[cd[100]][address(cd[36])])
                    call sub_ec686704[cd[100]][address(cd[36])].safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                         gas gas_remaining wei
                        args address(this.address), address(cd[68]), cd[((32 * idx) + cd[132] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ('cd', 132).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        emit 0xfa9c08d9: sub_ec686704[cd[100]][address(cd[36])], cd[100], Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len 32 * ('cd', 132).length]), cd[4], address(cd[36]), address(cd[68])
    else:
        if not stor1[cd[100]][address(cd[36])]:
            revert with 0, '', 0
        idx = 0
        while idx < ('cd', 132).length:
            mem[160] = 0x42842e0e00000000000000000000000000000000000000000000000000000000
            mem[164] = this.address
            mem[196] = address(cd[68])
            mem[228] = cd[((32 * idx) + cd[132] + 36)]
            require ext_code.size(address(cd[36]))
            call address(cd[36]).safeTransferFrom(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(this.address), address(cd[68]), cd[((32 * idx) + cd[132] + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require ('cd', 132).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        emit 0x5fb1c7f7: cd[100], Array(len=('cd', 132).length, data=call.data[cd[132] + 36 len 32 * ('cd', 132).length]), cd[4], address(cd[36]), address(cd[68])
}



}
