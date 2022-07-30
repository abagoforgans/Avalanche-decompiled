contract main {




// =====================  Runtime code  =====================


#
#  - refund(address arg1, address arg2, uint256 arg3)
#  - sub_fd09e3bd(?)
#
address owner;
uint256 stor2016;
address implementationAddress;
uint256 stor3608;

function implementation() {
    return address(implementationAddress)
}

function owner() {
    return address(owner)
}

function _fallback() payable {
    revert
}

function sub_9ded06df(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    if not address(implementationAddress):
        revert with 3205553466
    require ('cd', 4).length >= 32
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if address(('cd', 4)[0]):
        emit OwnershipTransferred(address(('cd', 4)[0]));
        uint256(stor2016) = ('cd', 4)[0]
}

function sub_0c93e3bb(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == address(arg5)
    if not msg.value:
        revert with 3049736743
    mem[96 len arg4.length] = arg4[all]
    mem[arg4.length + 96] = 0
    mem[ceil32(arg2.length) + 256] = arg3.length
    mem[ceil32(arg2.length) + 288 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg2.length) + 288] = 0
    emit 0x617332c1: 128, ceil32(arg2.length) + 160, msg.value, address(arg5), arg2.length, arg2[all], 0, mem[arg2.length + 288 len ceil32(arg2.length) + ceil32(arg3.length) - arg2.length], address(arg1), sha3(arg4[all])
}

function sub_a3499c73(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 818771057
    if arg2 != ext_code.hash(address(arg1)):
        revert with 2407856932
    mem[ceil32(arg3.length) + 196 len floor32(ceil32(arg3.length) + 99)] = unknown_0x9ded06df(?????), 0, 0, arg3.length, arg3[all], Mask(8 * floor32(ceil32(arg3.length) + 99) + -arg3.length - 68, -(8 * floor32(ceil32(arg3.length) + 99) + -arg3.length - 68) + 256, 0) >> -(8 * floor32(ceil32(arg3.length) + 99) + -arg3.length - 68) + 256
    delegate address(arg1) with:
       funct (Mask(32, -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256, 0) >> -(8 * ceil32(arg3.length) + -arg3.length + 4) + 256)
         gas gas_remaining wei
        args Mask(8 * -ceil32(arg3.length) + arg3.length + 28, 0, 0), mem[arg3.length + 228 len (4 * ceil32(arg3.length)) + -arg3.length + 36]
    if not delegate.return_code:
        revert with 2542820859
    emit Upgraded(address(arg1));
    uint256(stor3608) = arg1
}

function sub_c62c2002(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require test266151307() >= arg3
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require test266151307() >= arg4
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require test266151307() >= arg5
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require arg7 == address(arg7)
    if not msg.value:
        revert with 3049736743
    mem[96 len arg4.length] = arg4[all]
    mem[arg4.length + 96] = 0
    mem[ceil32(arg2.length) + 320] = arg3.length
    mem[ceil32(arg2.length) + 352 len arg3.length] = arg3[all]
    mem[arg3.length + ceil32(arg2.length) + 352] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 352] = arg5.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 384 len arg5.length] = arg5[all]
    mem[arg5.length + ceil32(arg2.length) + ceil32(arg3.length) + 384] = 0
    emit 0x999d431b: 192, ceil32(arg2.length) + 224, ceil32(arg2.length) + ceil32(arg3.length) + 256, arg6, msg.value, address(arg7), arg2.length, arg2[all], 0, mem[arg2.length + 352 len ceil32(arg2.length) + ceil32(arg3.length) + -arg2.length + 32], arg5[all], mem[ceil32(arg2.length) + ceil32(arg3.length) + arg5.length + 384 len ceil32(arg5.length) - arg5.length], address(arg1), sha3(arg4[all])
}

function sub_da854d75(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if address(owner) != msg.sender:
        revert with 818771057
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        if not address(cd[((32 * idx) + cd[36] + 36)]):
            call address(cd[4]) with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
            staticcall address(cd[((32 * idx) + cd[36] + 36)]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _49 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _50 = mem[_49]
            _51 = mem[64]
            mem[mem[64] + 36] = address(cd[4])
            mem[mem[64] + 68] = _50
            _52 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_52 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_52 + 36 len 28]
            _55 = mem[_52]
            s = 0
            while s < _55:
                mem[s + _51 + 100] = mem[s + _52 + 32]
                s = s + 32
                continue 
            if ceil32(_55) <= _55:
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _55 + _51 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 2428038168
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 2428038168
                else:
                    _92 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_92] = return_data.size
                    mem[_92 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 2428038168
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_92 + 32] == bool(mem[_92 + 32])
                        if not mem[_92 + 32]:
                            revert with 2428038168
            else:
                mem[_55 + _51 + 100] = 0
                call address(cd[((32 * idx) + cd[36] + 36)]).mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _55 + _51 + -mem[64] + 96]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 2428038168
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 2428038168
                else:
                    _93 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size) + 1
                    mem[_93] = return_data.size
                    mem[_93 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 2428038168
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_93 + 32] == bool(mem[_93 + 32])
                        if not mem[_93 + 32]:
                            revert with 2428038168
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_edb6b3a5(?) {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg5.length
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    require arg7 == address(arg7)
    require arg9 == address(arg9)
    mem[ceil32(ceil32(arg5.length)) + 97] = 100
    mem[ceil32(ceil32(arg5.length)) + 133 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(ceil32(arg5.length)) + 129 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(ceil32(arg5.length)) + 229 len 128] = unknown_0x23b872dd(?????), msg.sender, this.address, arg8, mem[ceil32(ceil32(arg5.length)) + 229 len 28]
    call address(arg7).mem[ceil32(ceil32(arg5.length)) + 229 len 4] with:
         gas gas_remaining wei
        args mem[ceil32(ceil32(arg5.length)) + 233 len 96]
    if not return_data.size:
        if not ext_call.success:
            revert with 2428038168
        if arg5.length:
            require arg5.length >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 2428038168
        mem[ceil32(ceil32(arg5.length)) + 229 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg5.length)) + 229] = 0
        mem[ceil32(ceil32(arg5.length)) + ceil32(arg2.length) + 485] = arg3.length
        mem[ceil32(ceil32(arg5.length)) + ceil32(arg2.length) + 517 len arg3.length] = arg3[all]
        mem[arg3.length + ceil32(ceil32(arg5.length)) + ceil32(arg2.length) + 517] = 0
        mem[ceil32(ceil32(arg5.length)) + ceil32(arg2.length) + ceil32(arg3.length) + 517] = arg5.length
        emit 0x8875f976: 224, ceil32(arg2.length) + 256, ceil32(arg2.length) + ceil32(arg3.length) + 288, arg6, address(arg7), arg8, address(arg9), arg2.length, arg2[all], 0, mem[ceil32(ceil32(arg5.length)) + arg2.length + 517 len ceil32(arg2.length) + ceil32(arg3.length) + -arg2.length + 32], Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 100) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256) << (8 * ceil32(arg5.length)) - 256, address(arg1), sha3(arg4[all])
    else:
        mem[ceil32(ceil32(arg5.length)) + 229] = return_data.size
        mem[ceil32(ceil32(arg5.length)) + 261 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 2428038168
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(ceil32(arg5.length)) + 261] == bool(mem[ceil32(ceil32(arg5.length)) + 261])
            if not mem[ceil32(ceil32(arg5.length)) + 261]:
                revert with 2428038168
        mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 230 len arg4.length] = arg4[all]
        mem[arg4.length + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + 230] = 0
        mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + ceil32(arg2.length) + 486] = arg3.length
        mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + ceil32(arg2.length) + 518 len arg3.length] = arg3[all]
        mem[arg3.length + ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + ceil32(arg2.length) + 518] = 0
        mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + ceil32(arg2.length) + ceil32(arg3.length) + 518] = arg5.length
        emit 0x8875f976: 224, ceil32(arg2.length) + 256, ceil32(arg2.length) + ceil32(arg3.length) + 288, arg6, address(arg7), arg8, address(arg9), arg2.length, arg2[all], 0, mem[ceil32(ceil32(arg5.length)) + ceil32(return_data.size) + arg2.length + 518 len ceil32(arg2.length) + ceil32(arg3.length) + -arg2.length + 32], Mask(8 * ceil32(arg5.length), -(8 * ceil32(arg5.length)) + 256, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, 100) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256) << (8 * ceil32(arg5.length)) - 256, address(arg1), sha3(arg4[all])
}



}
