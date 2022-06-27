contract main {




// =====================  Runtime code  =====================


address owner;
uint256 stor1;
mapping of uint8 stor2;
mapping of uint256 stor3;

function validAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function owner() {
    return owner
}

function sub_d796100a(?) {
  stop
}

function changeOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = arg1
}

function sub_1002dc34(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor2[address(arg1)] = uint8(bool(arg2))
}

function sub_6d89ffb0(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call address(arg1) with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function take(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_cc257949(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 164).length) + 97 < 96 or ceil32(32 * ('cd', 164).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = 128
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 2
    if not stor2[msg.sender]:
        revert with 0, 'invalid address'
    if this.address == address(cd[4]):
        mem[ceil32(32 * ('cd', 164).length) + 101] = this.address
        mem[ceil32(32 * ('cd', 164).length) + 133] = address(cd[68])
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[68])
        mem[ceil32(32 * ('cd', 164).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= cd[100]:
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 101] = cd[100]
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = cd[132]
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = 160
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 261] = ('cd', 164).length
            idx = 0
            s = 128
            t = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 293
            while idx < ('cd', 164).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197] = this.address
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 229] = cd[196]
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 293 len 32 * ('cd', 164).length]), address(this.address), cd[196]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
            if mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                revert with 0, 65
            require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 32 <= return_data.size
            var60001 = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 129
        else:
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 101] = address(cd[68])
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = stor1
            require ext_code.size(address(cd[36]))
            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), stor1
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = cd[100]
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[132]
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = 160
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 261] = ('cd', 164).length
            idx = 0
            s = 128
            t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293
            while idx < ('cd', 164).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = this.address
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229] = cd[196]
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293 len 32 * ('cd', 164).length]), address(this.address), cd[196]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
            if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                revert with 0, 65
            require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 32 <= return_data.size
    else:
        mem[ceil32(32 * ('cd', 164).length) + 101] = address(cd[4])
        mem[ceil32(32 * ('cd', 164).length) + 133] = this.address
        mem[ceil32(32 * ('cd', 164).length) + 165] = cd[100]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args address(cd[4]), this.address, cd[100]
        mem[ceil32(32 * ('cd', 164).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 101] = this.address
        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = address(cd[68])
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[68])
        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= cd[100]:
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = cd[100]
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[132]
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = 160
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 261] = ('cd', 164).length
            idx = 0
            s = 128
            t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293
            while idx < ('cd', 164).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = this.address
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229] = cd[196]
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293 len 32 * ('cd', 164).length]), address(this.address), cd[196]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
            if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                revert with 0, 65
            require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 32 <= return_data.size
        else:
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = address(cd[68])
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = stor1
            require ext_code.size(address(cd[36]))
            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), stor1
            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 101] = cd[100]
            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 133] = cd[132]
            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 165] = 160
            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 261] = ('cd', 164).length
            idx = 0
            s = 128
            t = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 293
            while idx < ('cd', 164).length:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 197] = this.address
            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 229] = cd[196]
            require ext_code.size(address(cd[68]))
            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 293 len 32 * ('cd', 164).length]), address(this.address), cd[196]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(32 * ('cd', 164).length) + (6 * ceil32(return_data.size)) + 97
            require return_data.size >= 32
            require mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
            require ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
            if mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                revert with 0, 65
            require mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 32 <= return_data.size
}

function sub_d3893778(?) {
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 100).length) + 97 < 96 or ceil32(32 * ('cd', 100).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = 0
    s = cd[100] + 36
    t = 128
    while idx < ('cd', 100).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 132).length) + 98 < 97 or ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 100).length) + 97] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = ceil32(32 * ('cd', 100).length) + 129
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    _197 = mem[128]
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 102] = this.address
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 134] = address(cd[36])
    require ext_code.size(address(_197))
    staticcall address(_197).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(cd[36])
    mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 98
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 98] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 102] = cd[68]
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 134] = 1
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 166] = 160
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 262] = ('cd', 100).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 100).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 198] = this.address
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 230] = block.timestamp
        require ext_code.size(address(cd[36]))
        call address(cd[36]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + -mem[64] + 290]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _296 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _298 = mem[_296]
        require mem[_296] <= test266151307()
        require _296 + return_data.size > _296 + mem[_296] + 31
        _300 = mem[_296 + mem[_296]]
        if mem[_296 + mem[_296]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_296 + mem[_296]]) + 1 < 0 or _296 + ceil32(return_data.size) + ceil32(32 * mem[_296 + mem[_296]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _296 + ceil32(return_data.size) + ceil32(32 * mem[_296 + mem[_296]]) + 1
        mem[_296 + ceil32(return_data.size)] = _300
        require _298 + (32 * _300) + 32 <= return_data.size
        mem[_296 + ceil32(return_data.size) + 32 len 32 * _300] = mem[_296 + _298 + 32 len 32 * _300]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[36])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _380 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_380]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _392 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _396 = mem[_392]
            _400 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _396
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _402 = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 100).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 100).length) + 129
            t = mem[64] + 196
            while idx < _402:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_400 + 100] = this.address
            mem[_400 + 132] = block.timestamp
            require ext_code.size(address(cd[36]))
            call address(cd[36]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _400 + (32 * _402) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _452 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_452] <= test266151307()
            require _452 + return_data.size > _452 + mem[_452] + 31
            if mem[_452 + mem[_452]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_452 + mem[_452]]) + 1 < 0 or _452 + ceil32(return_data.size) + ceil32(32 * mem[_452 + mem[_452]]) + 1 > test266151307():
                revert with 0, 65
            require mem[_452] + (32 * mem[_452 + mem[_452]]) + 32 <= return_data.size
            var105001 = _452 + mem[_452] + (32 * mem[_452 + mem[_452]]) + 32
        else:
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = stor1
            require ext_code.size(address(cd[4]))
            call address(cd[4]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[36]), stor1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _393 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_393] == bool(mem[_393])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _411 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _415 = mem[_411]
            _418 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _415
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _422 = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 100).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 100).length) + 129
            t = mem[64] + 196
            while idx < _422:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_418 + 100] = this.address
            mem[_418 + 132] = block.timestamp
            require ext_code.size(address(cd[36]))
            call address(cd[36]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _418 + (32 * _422) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _453 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_453] <= test266151307()
            require _453 + return_data.size > _453 + mem[_453] + 31
            if mem[_453 + mem[_453]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_453 + mem[_453]]) + 1 < 0 or _453 + ceil32(return_data.size) + ceil32(32 * mem[_453 + mem[_453]]) + 1 > test266151307():
                revert with 0, 65
            require mem[_453] + (32 * mem[_453 + mem[_453]]) + 32 <= return_data.size
    else:
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 102] = address(cd[36])
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 134] = stor1
        require ext_code.size(address(_197))
        call address(_197).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[36]), stor1
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 98
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 98] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 102] = cd[68]
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 134] = 1
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 166] = 160
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 262] = ('cd', 100).length
        idx = 0
        s = 128
        t = mem[64] + 196
        while idx < ('cd', 100).length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 198] = this.address
        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 230] = block.timestamp
        require ext_code.size(address(cd[36]))
        call address(cd[36]).mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + (32 * ('cd', 100).length) + -mem[64] + 290]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _297 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _299 = mem[_297]
        require mem[_297] <= test266151307()
        require _297 + return_data.size > _297 + mem[_297] + 31
        _301 = mem[_297 + mem[_297]]
        if mem[_297 + mem[_297]] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[_297 + mem[_297]]) + 1 < 0 or _297 + ceil32(return_data.size) + ceil32(32 * mem[_297 + mem[_297]]) + 1 > test266151307():
            revert with 0, 65
        mem[64] = _297 + ceil32(return_data.size) + ceil32(32 * mem[_297 + mem[_297]]) + 1
        mem[_297 + ceil32(return_data.size)] = _301
        require _299 + (32 * _301) + 32 <= return_data.size
        mem[_297 + ceil32(return_data.size) + 32 len 32 * _301] = mem[_297 + _299 + 32 len 32 * _301]
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(cd[36])
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[36])
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _381 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_381]:
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _394 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _398 = mem[_394]
            _401 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _398
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _403 = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 100).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 100).length) + 129
            t = mem[64] + 196
            while idx < _403:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_401 + 100] = this.address
            mem[_401 + 132] = block.timestamp
            require ext_code.size(address(cd[36]))
            call address(cd[36]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _401 + (32 * _403) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _454 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_454] <= test266151307()
            require _454 + return_data.size > _454 + mem[_454] + 31
            if mem[_454 + mem[_454]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_454 + mem[_454]]) + 1 < 0 or _454 + ceil32(return_data.size) + ceil32(32 * mem[_454 + mem[_454]]) + 1 > test266151307():
                revert with 0, 65
            require mem[_454] + (32 * mem[_454 + mem[_454]]) + 32 <= return_data.size
        else:
            mem[mem[64] + 4] = address(cd[36])
            mem[mem[64] + 36] = stor1
            require ext_code.size(address(cd[4]))
            call address(cd[4]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[36]), stor1
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _395 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_395] == bool(mem[_395])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _413 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _417 = mem[_413]
            _419 = mem[64]
            mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _417
            mem[mem[64] + 36] = 1
            mem[mem[64] + 68] = 160
            _423 = mem[ceil32(32 * ('cd', 100).length) + 97]
            mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 100).length) + 97]
            idx = 0
            s = ceil32(32 * ('cd', 100).length) + 129
            t = mem[64] + 196
            while idx < _423:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[_419 + 100] = this.address
            mem[_419 + 132] = block.timestamp
            require ext_code.size(address(cd[36]))
            call address(cd[36]).mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _419 + (32 * _423) + -mem[64] + 192]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _455 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_455] <= test266151307()
            require _455 + return_data.size > _455 + mem[_455] + 31
            if mem[_455 + mem[_455]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_455 + mem[_455]]) + 1 < 0 or _455 + ceil32(return_data.size) + ceil32(32 * mem[_455 + mem[_455]]) + 1 > test266151307():
                revert with 0, 65
            require mem[_455] + (32 * mem[_455 + mem[_455]]) + 32 <= return_data.size
}

function sub_6db7e186(?) {
    require calldata.size - 4 >= 288
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 164).length) + 97 < 96 or ceil32(32 * ('cd', 164).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = 0
    s = cd[164] + 36
    t = 128
    while idx < ('cd', 164).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == address(cd[196])
    require cd[260] == bool(cd[260])
    if 60 > !stor3[cd[4]]:
        revert with 0, 17
    if stor3[cd[4]] + 60 < block.timestamp:
        mem[0] = msg.sender
        mem[32] = 2
        if not stor2[msg.sender]:
            revert with 0, 'invalid address'
        mem[ceil32(32 * ('cd', 164).length) + 101] = this.address
        mem[ceil32(32 * ('cd', 164).length) + 133] = address(cd[68])
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[68])
        mem[ceil32(32 * ('cd', 164).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= cd[132]:
            if not cd[260]:
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 101] = cd[100]
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = cd[132]
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = 160
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 261] = ('cd', 164).length
                idx = 0
                s = 128
                t = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 293
                while idx < ('cd', 164).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197] = address(cd[196])
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 229] = cd[228]
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 293 len 32 * ('cd', 164).length]), address(cd[196]), cd[228]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97
                require return_data.size >= 32
                require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
                if mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                    revert with 0, 65
                require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 32 <= return_data.size
                stor3[cd[4]] = block.timestamp
            else:
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 101] = cd[100]
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = 64
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = ('cd', 164).length
                idx = 0
                s = 128
                t = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197
                while idx < ('cd', 164).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[68]))
                staticcall address(cd[68]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[100], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197 len 32 * ('cd', 164).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97
                require return_data.size >= 32
                _325 = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32
                require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
                _333 = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
                if mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
                require _325 + (32 * _333) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 32 * _333] = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + _325 + 129 len 32 * _333]
                if 0 >= _333:
                    revert with 0, 50
                if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] < cd[132]:
                    _428 = mem[64]
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = cd[132]
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 164).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < ('cd', 164).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_428 + 100] = address(cd[196])
                    mem[_428 + 132] = cd[228]
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _428 + (32 * ('cd', 164).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _476 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_476] <= test266151307()
                    require _476 + return_data.size > _476 + mem[_476] + 31
                    if mem[_476 + mem[_476]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_476 + mem[_476]]) + 1 < 0 or _476 + ceil32(return_data.size) + ceil32(32 * mem[_476 + mem[_476]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_476] + (32 * mem[_476 + mem[_476]]) + 32 <= return_data.size
                    stor3[cd[4]] = block.timestamp
        else:
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 101] = address(cd[68])
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = stor1
            require ext_code.size(address(cd[36]))
            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[68]), stor1
            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not cd[260]:
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = cd[100]
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[132]
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = 160
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 261] = ('cd', 164).length
                idx = 0
                s = 128
                t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293
                while idx < ('cd', 164).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = address(cd[196])
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229] = cd[228]
                require ext_code.size(address(cd[68]))
                call address(cd[68]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293 len 32 * ('cd', 164).length]), address(cd[196]), cd[228]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97
                require return_data.size >= 32
                require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
                if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                    revert with 0, 65
                require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 32 <= return_data.size
                var76001 = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 129
                stor3[cd[4]] = block.timestamp
            else:
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = cd[100]
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = 64
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = ('cd', 164).length
                idx = 0
                s = 128
                t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197
                while idx < ('cd', 164).length:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(address(cd[68]))
                staticcall address(cd[68]).getAmountsIn(uint256 arg1, address[] arg2) with:
                        gas gas_remaining wei
                       args cd[100], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197 len 32 * ('cd', 164).length])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97
                require return_data.size >= 32
                _327 = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32
                require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
                _335 = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
                if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
                mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97] = _335
                require _327 + (32 * _335) + 32 <= return_data.size
                mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129 len 32 * _335] = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + _327 + 129 len 32 * _335]
                var76001 = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + _327 + (32 * _335) + 129
                if 0 >= _335:
                    revert with 0, 50
                if mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129] < cd[132]:
                    _429 = mem[64]
                    mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = cd[100]
                    mem[mem[64] + 36] = cd[132]
                    mem[mem[64] + 68] = 160
                    mem[mem[64] + 164] = ('cd', 164).length
                    idx = 0
                    s = 128
                    t = mem[64] + 196
                    while idx < ('cd', 164).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_429 + 100] = address(cd[196])
                    mem[_429 + 132] = cd[228]
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _429 + (32 * ('cd', 164).length) + -mem[64] + 192]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _477 = mem[64]
                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_477] <= test266151307()
                    require _477 + return_data.size > _477 + mem[_477] + 31
                    if mem[_477 + mem[_477]] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[_477 + mem[_477]]) + 1 < 0 or _477 + ceil32(return_data.size) + ceil32(32 * mem[_477 + mem[_477]]) + 1 > test266151307():
                        revert with 0, 65
                    require mem[_477] + (32 * mem[_477 + mem[_477]]) + 32 <= return_data.size
                    stor3[cd[4]] = block.timestamp
    else:
        if not cd[260]:
            if stor3[cd[4]] + 60 >= block.timestamp:
                revert with 0, 'invalid sig'
            mem[0] = msg.sender
            mem[32] = 2
            if not stor2[msg.sender]:
                revert with 0, 'invalid address'
            mem[ceil32(32 * ('cd', 164).length) + 101] = this.address
            mem[ceil32(32 * ('cd', 164).length) + 133] = address(cd[68])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[68])
            mem[ceil32(32 * ('cd', 164).length) + 97] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] >= cd[132]:
                if not cd[260]:
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 101] = cd[100]
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = cd[132]
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = 160
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 261] = ('cd', 164).length
                    idx = 0
                    s = 128
                    t = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 293
                    while idx < ('cd', 164).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197] = address(cd[196])
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 229] = cd[228]
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 293 len 32 * ('cd', 164).length]), address(cd[196]), cd[228]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97
                    require return_data.size >= 32
                    require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                    require ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
                    if mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 32 <= return_data.size
                    stor3[cd[4]] = block.timestamp
                else:
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 101] = cd[100]
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = 64
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = ('cd', 164).length
                    idx = 0
                    s = 128
                    t = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197
                    while idx < ('cd', 164).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[100], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197 len 32 * ('cd', 164).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97
                    require return_data.size >= 32
                    _329 = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32
                    require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                    require ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
                    _337 = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
                    if mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
                    require _329 + (32 * _337) + 32 <= return_data.size
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 32 * _337] = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + _329 + 129 len 32 * _337]
                    if 0 >= _337:
                        revert with 0, 50
                    if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] < cd[132]:
                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[100]
                        mem[mem[64] + 36] = cd[132]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 164).length
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = address(cd[196])
                        mem[mem[64] + 132] = cd[228]
                        require ext_code.size(address(cd[68]))
                        call address(cd[68]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len 96], address(cd[196]), cd[228], mem[mem[64] + 164 len (32 * ('cd', 164).length) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _478 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_478] <= test266151307()
                        require _478 + return_data.size > _478 + mem[_478] + 31
                        if mem[_478 + mem[_478]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_478 + mem[_478]]) + 1 < 0 or _478 + ceil32(return_data.size) + ceil32(32 * mem[_478 + mem[_478]]) + 1 > test266151307():
                            revert with 0, 65
                        require mem[_478] + (32 * mem[_478 + mem[_478]]) + 32 <= return_data.size
                        stor3[cd[4]] = block.timestamp
            else:
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 101] = address(cd[68])
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = stor1
                require ext_code.size(address(cd[36]))
                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[68]), stor1
                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not cd[260]:
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = cd[100]
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[132]
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = 160
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 261] = ('cd', 164).length
                    idx = 0
                    s = 128
                    t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293
                    while idx < ('cd', 164).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = address(cd[196])
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229] = cd[228]
                    require ext_code.size(address(cd[68]))
                    call address(cd[68]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293 len 32 * ('cd', 164).length]), address(cd[196]), cd[228]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97
                    require return_data.size >= 32
                    require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                    require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
                    if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 32 <= return_data.size
                    var78001 = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 129
                    stor3[cd[4]] = block.timestamp
                else:
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 101] = cd[100]
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = 64
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = ('cd', 164).length
                    idx = 0
                    s = 128
                    t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197
                    while idx < ('cd', 164).length:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(address(cd[68]))
                    staticcall address(cd[68]).getAmountsIn(uint256 arg1, address[] arg2) with:
                            gas gas_remaining wei
                           args cd[100], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197 len 32 * ('cd', 164).length])
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97
                    require return_data.size >= 32
                    _331 = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32
                    require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                    require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 97 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 128
                    _339 = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]
                    if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97] > test266151307():
                        revert with 0, 65
                    if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 97 len 4], Mask(224, 32, cd[100]) >> 32 + 97]) + 98
                    mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 97] = _339
                    require _331 + (32 * _339) + 32 <= return_data.size
                    mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129 len 32 * _339] = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + _331 + 129 len 32 * _339]
                    var78001 = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + _331 + (32 * _339) + 129
                    if 0 >= _339:
                        revert with 0, 50
                    if mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129] < cd[132]:
                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = cd[100]
                        mem[mem[64] + 36] = cd[132]
                        mem[mem[64] + 68] = 160
                        mem[mem[64] + 164] = ('cd', 164).length
                        idx = 0
                        s = 128
                        t = mem[64] + 196
                        while idx < mem[96]:
                            mem[t] = mem[s + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[mem[64] + 100] = address(cd[196])
                        mem[mem[64] + 132] = cd[228]
                        require ext_code.size(address(cd[68]))
                        call address(cd[68]).mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len 96], address(cd[196]), cd[228], mem[mem[64] + 164 len (32 * ('cd', 164).length) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _479 = mem[64]
                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_479] <= test266151307()
                        require _479 + return_data.size > _479 + mem[_479] + 31
                        if mem[_479 + mem[_479]] > test266151307():
                            revert with 0, 65
                        if ceil32(32 * mem[_479 + mem[_479]]) + 1 < 0 or _479 + ceil32(return_data.size) + ceil32(32 * mem[_479 + mem[_479]]) + 1 > test266151307():
                            revert with 0, 65
                        require mem[_479] + (32 * mem[_479 + mem[_479]]) + 32 <= return_data.size
                        stor3[cd[4]] = block.timestamp
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x8da5cb5b(?????) > uint32(call.func_hash) >> 224:
            if take(address arg1, address arg2, uint256 arg3) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 96
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                require ext_code.size(address(cd[4]))
                call address(cd[4]).0xa9059cbb with:
                     gas gas_remaining wei
                    args address(cd[36]), cd[68]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x1002dc34(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[4] == address(cd[4])
                    require cd[36] == bool(cd[36])
                    if owner != msg.sender:
                        revert with 0, 'Ownable: caller is not the owner'
                    stor2[address(cd[4])] = uint8(bool(cd[36]))
                else:
                    if unknown_0x5c1c8621(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return bool(stor2[cd[4]])
                    if unknown_0x6d89ffb0(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        require cd[4] == address(cd[4])
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
                        call address(cd[4]) with:
                           value cd[36] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require unknown_0x6db7e186(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 288
                        require cd[36] == address(cd[36])
                        require cd[68] == address(cd[68])
                        require cd[164] <= test266151307()
                        require cd[164] + 35 < calldata.size
                        if ('cd', 164).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 164).length) + 129 < 128 or ceil32(32 * ('cd', 164).length) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 164).length
                        require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
                        idx = 0
                        s = cd[164] + 36
                        t = 160
                        while idx < ('cd', 164).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require cd[196] == address(cd[196])
                        require cd[260] == bool(cd[260])
                        if 60 > !stor3[cd[4]]:
                            revert with 0, 17
                        if stor3[cd[4]] + 60 < block.timestamp:
                            mem[0] = msg.sender
                            mem[32] = 2
                            if not stor2[msg.sender]:
                                revert with 0, 'invalid address'
                            mem[ceil32(32 * ('cd', 164).length) + 133] = this.address
                            mem[ceil32(32 * ('cd', 164).length) + 165] = address(cd[68])
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(cd[68])
                            mem[ceil32(32 * ('cd', 164).length) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] >= cd[132]:
                                if not cd[260]:
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = cd[100]
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = cd[132]
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197] = 160
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 293] = ('cd', 164).length
                                    idx = 0
                                    s = 160
                                    t = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 325
                                    while idx < ('cd', 164).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 229] = address(cd[196])
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 261] = cd[228]
                                    require ext_code.size(address(cd[68]))
                                    call address(cd[68]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 164).length]), address(cd[196]), cd[228]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                    require ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                                    if mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                        revert with 0, 65
                                    require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 32 <= return_data.size
                                    stor3[cd[4]] = block.timestamp
                                else:
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = cd[100]
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = 64
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197] = ('cd', 164).length
                                    idx = 0
                                    s = 160
                                    t = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 229
                                    while idx < ('cd', 164).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[68]))
                                    staticcall address(cd[68]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[100], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 229 len 32 * ('cd', 164).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129
                                    require return_data.size >= 32
                                    _674 = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32
                                    require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                    require ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                                    _687 = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]
                                    if mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] = _687
                                    require _674 + (32 * _687) + 32 <= return_data.size
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 161 len 32 * _687] = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + _674 + 161 len 32 * _687]
                                    if 0 >= _687:
                                        revert with 0, 50
                                    if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 161] < cd[132]:
                                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[100]
                                        mem[mem[64] + 36] = cd[132]
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = ('cd', 164).length
                                        idx = 0
                                        s = 160
                                        t = mem[64] + 196
                                        while idx < ('cd', 164).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[mem[64] + 100] = address(cd[196])
                                        mem[mem[64] + 132] = cd[228]
                                        require ext_code.size(address(cd[68]))
                                        call address(cd[68]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len 96], address(cd[196]), cd[228], mem[mem[64] + 164 len (32 * ('cd', 164).length) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1027 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1027] <= test266151307()
                                        require _1027 + return_data.size > _1027 + mem[_1027] + 31
                                        if mem[_1027 + mem[_1027]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1027 + mem[_1027]]) + 1 < 0 or _1027 + ceil32(return_data.size) + ceil32(32 * mem[_1027 + mem[_1027]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require mem[_1027] + (32 * mem[_1027 + mem[_1027]]) + 32 <= return_data.size
                                        stor3[cd[4]] = block.timestamp
                            else:
                                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = address(cd[68])
                                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = stor1
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[68]), stor1
                                mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                if not cd[260]:
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[100]
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = cd[132]
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = 160
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293] = ('cd', 164).length
                                    idx = 0
                                    s = 160
                                    t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 325
                                    while idx < ('cd', 164).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229] = address(cd[196])
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 261] = cd[228]
                                    require ext_code.size(address(cd[68]))
                                    call address(cd[68]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 325 len 32 * ('cd', 164).length]), address(cd[196]), cd[228]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129
                                    require return_data.size >= 32
                                    require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                    require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                                    if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                        revert with 0, 65
                                    require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 32 <= return_data.size
                                    var83001 = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 161
                                    stor3[cd[4]] = block.timestamp
                                else:
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[100]
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = 64
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = ('cd', 164).length
                                    idx = 0
                                    s = 160
                                    t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229
                                    while idx < ('cd', 164).length:
                                        mem[t] = mem[s + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    require ext_code.size(address(cd[68]))
                                    staticcall address(cd[68]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                            gas gas_remaining wei
                                           args cd[100], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229 len 32 * ('cd', 164).length])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129
                                    require return_data.size >= 32
                                    _676 = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32
                                    require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                    require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                                    _689 = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]
                                    if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                        revert with 0, 65
                                    mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130
                                    mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129] = _689
                                    require _676 + (32 * _689) + 32 <= return_data.size
                                    mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 161 len 32 * _689] = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + _676 + 161 len 32 * _689]
                                    var83001 = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + _676 + (32 * _689) + 161
                                    if 0 >= _689:
                                        revert with 0, 50
                                    if mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 161] < cd[132]:
                                        _894 = mem[64]
                                        mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = cd[100]
                                        mem[mem[64] + 36] = cd[132]
                                        mem[mem[64] + 68] = 160
                                        mem[mem[64] + 164] = ('cd', 164).length
                                        idx = 0
                                        s = 160
                                        t = mem[64] + 196
                                        while idx < ('cd', 164).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_894 + 100] = address(cd[196])
                                        mem[_894 + 132] = cd[228]
                                        require ext_code.size(address(cd[68]))
                                        call address(cd[68]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _894 + (32 * ('cd', 164).length) + -mem[64] + 192]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1028 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        require mem[_1028] <= test266151307()
                                        require _1028 + return_data.size > _1028 + mem[_1028] + 31
                                        if mem[_1028 + mem[_1028]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1028 + mem[_1028]]) + 1 < 0 or _1028 + ceil32(return_data.size) + ceil32(32 * mem[_1028 + mem[_1028]]) + 1 > test266151307():
                                            revert with 0, 65
                                        require mem[_1028] + (32 * mem[_1028 + mem[_1028]]) + 32 <= return_data.size
                                        stor3[cd[4]] = block.timestamp
                        else:
                            if not cd[260]:
                                if stor3[cd[4]] + 60 >= block.timestamp:
                                    revert with 0, 'invalid sig'
                                mem[0] = msg.sender
                                mem[32] = 2
                                if not stor2[msg.sender]:
                                    revert with 0, 'invalid address'
                                mem[ceil32(32 * ('cd', 164).length) + 133] = this.address
                                mem[ceil32(32 * ('cd', 164).length) + 165] = address(cd[68])
                                require ext_code.size(address(cd[36]))
                                staticcall address(cd[36]).0xdd62ed3e with:
                                        gas gas_remaining wei
                                       args this.address, address(cd[68])
                                mem[ceil32(32 * ('cd', 164).length) + 129] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] >= cd[132]:
                                    if not cd[260]:
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = cd[100]
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = cd[132]
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197] = 160
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 293] = ('cd', 164).length
                                        idx = 0
                                        s = 160
                                        t = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 325
                                        while idx < ('cd', 164).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 229] = address(cd[196])
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 261] = cd[228]
                                        require ext_code.size(address(cd[68]))
                                        call address(cd[68]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 164).length]), address(cd[196]), cd[228]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                        require ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                                        if mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                            revert with 0, 65
                                        require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 32 <= return_data.size
                                        stor3[cd[4]] = block.timestamp
                                    else:
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = cd[100]
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = 64
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197] = ('cd', 164).length
                                        idx = 0
                                        s = 160
                                        t = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 229
                                        while idx < ('cd', 164).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[68]))
                                        staticcall address(cd[68]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[100], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 229 len 32 * ('cd', 164).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129
                                        require return_data.size >= 32
                                        _678 = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32
                                        require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                        require ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                                        _691 = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]
                                        if mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] = _691
                                        require _678 + (32 * _691) + 32 <= return_data.size
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 161 len 32 * _691] = mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + _678 + 161 len 32 * _691]
                                        if 0 >= _691:
                                            revert with 0, 50
                                        if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 161] < cd[132]:
                                            _895 = mem[64]
                                            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = cd[100]
                                            mem[mem[64] + 36] = cd[132]
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = ('cd', 164).length
                                            idx = 0
                                            s = 160
                                            t = mem[64] + 196
                                            while idx < ('cd', 164).length:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_895 + 100] = address(cd[196])
                                            mem[_895 + 132] = cd[228]
                                            require ext_code.size(address(cd[68]))
                                            call address(cd[68]).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _895 + (32 * ('cd', 164).length) + -mem[64] + 192]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1029 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1029] <= test266151307()
                                            require _1029 + return_data.size > _1029 + mem[_1029] + 31
                                            if mem[_1029 + mem[_1029]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_1029 + mem[_1029]]) + 1 < 0 or _1029 + ceil32(return_data.size) + ceil32(32 * mem[_1029 + mem[_1029]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require mem[_1029] + (32 * mem[_1029 + mem[_1029]]) + 32 <= return_data.size
                                            stor3[cd[4]] = block.timestamp
                                else:
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = address(cd[68])
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = stor1
                                    require ext_code.size(address(cd[36]))
                                    call address(cd[36]).approve(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args address(cd[68]), stor1
                                    mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                    if not cd[260]:
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[100]
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = cd[132]
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = 160
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293] = ('cd', 164).length
                                        idx = 0
                                        s = 160
                                        t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 325
                                        while idx < ('cd', 164).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229] = address(cd[196])
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 261] = cd[228]
                                        require ext_code.size(address(cd[68]))
                                        call address(cd[68]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 325 len 32 * ('cd', 164).length]), address(cd[196]), cd[228]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129
                                        require return_data.size >= 32
                                        require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                        require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                                        if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                            revert with 0, 65
                                        require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 32 <= return_data.size
                                        var85001 = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 161
                                        stor3[cd[4]] = block.timestamp
                                    else:
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[100]
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = 64
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = ('cd', 164).length
                                        idx = 0
                                        s = 160
                                        t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229
                                        while idx < ('cd', 164).length:
                                            mem[t] = mem[s + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        require ext_code.size(address(cd[68]))
                                        staticcall address(cd[68]).getAmountsIn(uint256 arg1, address[] arg2) with:
                                                gas gas_remaining wei
                                               args cd[100], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229 len 32 * ('cd', 164).length])
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129
                                        require return_data.size >= 32
                                        _680 = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32
                                        require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                                        require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                                        _693 = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]
                                        if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                            revert with 0, 65
                                        mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130
                                        mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129] = _693
                                        require _680 + (32 * _693) + 32 <= return_data.size
                                        mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 161 len 32 * _693] = mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + _680 + 161 len 32 * _693]
                                        var85001 = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + _680 + (32 * _693) + 161
                                        if 0 >= _693:
                                            revert with 0, 50
                                        if mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 161] < cd[132]:
                                            _896 = mem[64]
                                            mem[mem[64]] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                                            mem[mem[64] + 4] = cd[100]
                                            mem[mem[64] + 36] = cd[132]
                                            mem[mem[64] + 68] = 160
                                            mem[mem[64] + 164] = ('cd', 164).length
                                            idx = 0
                                            s = 160
                                            t = mem[64] + 196
                                            while idx < ('cd', 164).length:
                                                mem[t] = mem[s + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_896 + 100] = address(cd[196])
                                            mem[_896 + 132] = cd[228]
                                            require ext_code.size(address(cd[68]))
                                            call address(cd[68]).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _896 + (32 * ('cd', 164).length) + -mem[64] + 192]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1030 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_1030] <= test266151307()
                                            require _1030 + return_data.size > _1030 + mem[_1030] + 31
                                            if mem[_1030 + mem[_1030]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_1030 + mem[_1030]]) + 1 < 0 or _1030 + ceil32(return_data.size) + ceil32(32 * mem[_1030 + mem[_1030]]) + 1 > test266151307():
                                                revert with 0, 65
                                            require mem[_1030] + (32 * mem[_1030 + mem[_1030]]) + 32 <= return_data.size
                                            stor3[cd[4]] = block.timestamp
        else:
            if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                return owner
            if unknown_0xa6f9dae1(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                owner = address(cd[4])
            else:
                if unknown_0xcc257949(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 224
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    require cd[164] <= test266151307()
                    require cd[164] + 35 < calldata.size
                    if ('cd', 164).length > test266151307():
                        revert with 0, 65
                    if ceil32(32 * ('cd', 164).length) + 129 < 128 or ceil32(32 * ('cd', 164).length) + 129 > test266151307():
                        revert with 0, 65
                    mem[128] = ('cd', 164).length
                    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[164] + 36
                    t = 160
                    while idx < ('cd', 164).length:
                        require cd[s] == address(cd[s])
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 2
                    if not stor2[msg.sender]:
                        revert with 0, 'invalid address'
                    if this.address == address(cd[4]):
                        mem[ceil32(32 * ('cd', 164).length) + 133] = this.address
                        mem[ceil32(32 * ('cd', 164).length) + 165] = address(cd[68])
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(cd[68])
                        mem[ceil32(32 * ('cd', 164).length) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= cd[100]:
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = cd[100]
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = cd[132]
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 197] = 160
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 293] = ('cd', 164).length
                            idx = 0
                            s = 160
                            t = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 325
                            while idx < ('cd', 164).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 229] = this.address
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 261] = cd[196]
                            require ext_code.size(address(cd[68]))
                            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 325 len 32 * ('cd', 164).length]), address(this.address), cd[196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129
                            require return_data.size >= 32
                            require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                            require ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                            if mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                revert with 0, 65
                            require mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 32 <= return_data.size
                            var65001 = ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 161
                        else:
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = address(cd[68])
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = stor1
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[68]), stor1
                            mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[100]
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = cd[132]
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = 160
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293] = ('cd', 164).length
                            idx = 0
                            s = 160
                            t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 325
                            while idx < ('cd', 164).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229] = this.address
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 261] = cd[196]
                            require ext_code.size(address(cd[68]))
                            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 325 len 32 * ('cd', 164).length]), address(this.address), cd[196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129
                            require return_data.size >= 32
                            require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                            require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                            if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                revert with 0, 65
                            require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 32 <= return_data.size
                    else:
                        mem[ceil32(32 * ('cd', 164).length) + 133] = address(cd[4])
                        mem[ceil32(32 * ('cd', 164).length) + 165] = this.address
                        mem[ceil32(32 * ('cd', 164).length) + 197] = cd[100]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x23b872dd with:
                             gas gas_remaining wei
                            args address(cd[4]), this.address, cd[100]
                        mem[ceil32(32 * ('cd', 164).length) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 133] = this.address
                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 165] = address(cd[68])
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(cd[68])
                        mem[ceil32(32 * ('cd', 164).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] >= cd[100]:
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = cd[100]
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = cd[132]
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 197] = 160
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 293] = ('cd', 164).length
                            idx = 0
                            s = 160
                            t = ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 325
                            while idx < ('cd', 164).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 229] = this.address
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 261] = cd[196]
                            require ext_code.size(address(cd[68]))
                            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 325 len 32 * ('cd', 164).length]), address(this.address), cd[196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129
                            require return_data.size >= 32
                            require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                            require ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                            if mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                revert with 0, 65
                            require mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 32 <= return_data.size
                        else:
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 133] = address(cd[68])
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 165] = stor1
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[68]), stor1
                            mem[ceil32(32 * ('cd', 164).length) + (2 * ceil32(return_data.size)) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 133] = cd[100]
                            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 165] = cd[132]
                            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 197] = 160
                            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 293] = ('cd', 164).length
                            idx = 0
                            s = 160
                            t = ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 325
                            while idx < ('cd', 164).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 229] = this.address
                            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 261] = cd[196]
                            require ext_code.size(address(cd[68]))
                            call address(cd[68]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[100], cd[132], Array(len=('cd', 164).length, data=mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 325 len 32 * ('cd', 164).length]), address(this.address), cd[196]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 164).length) + (6 * ceil32(return_data.size)) + 129
                            require return_data.size >= 32
                            require mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 <= test266151307()
                            require ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + return_data.size + 129 > ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 160
                            if mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 1 < 0 or ceil32(32 * ('cd', 164).length) + (6 * ceil32(return_data.size)) + ceil32(32 * mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 130 > test266151307():
                                revert with 0, 65
                            require mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + (32 * mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + mem[ceil32(32 * ('cd', 164).length) + (4 * ceil32(return_data.size)) + 129 len 4], Mask(224, 32, cd[100]) >> 32 + 129]) + 32 <= return_data.size
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0xd3893778(?????):
                        require unknown_0xd796100a(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 160
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        require cd[100] <= test266151307()
                        require cd[100] + 35 < calldata.size
                        if ('cd', 100).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 100).length) + 129 < 128 or ceil32(32 * ('cd', 100).length) + 129 > test266151307():
                            revert with 0, 65
                        mem[128] = ('cd', 100).length
                        require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
                        idx = 0
                        s = cd[100] + 36
                        t = 160
                        while idx < ('cd', 100).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require cd[132] <= test266151307()
                        require cd[132] + 35 < calldata.size
                        if ('cd', 132).length > test266151307():
                            revert with 0, 65
                        if ceil32(32 * ('cd', 132).length) + 130 < 129 or ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130 > test266151307():
                            revert with 0, 65
                        mem[ceil32(32 * ('cd', 100).length) + 129] = ('cd', 132).length
                        require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                        idx = 0
                        s = cd[132] + 36
                        t = ceil32(32 * ('cd', 100).length) + 161
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        if 0 >= ('cd', 100).length:
                            revert with 0, 50
                        _670 = mem[160]
                        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 134] = this.address
                        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 166] = address(cd[36])
                        require ext_code.size(address(_670))
                        staticcall address(_670).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(cd[36])
                        mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + 130] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 130
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 130] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 134] = cd[68]
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 166] = 1
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 198] = 160
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 294] = ('cd', 100).length
                            idx = 0
                            s = 160
                            t = mem[64] + 196
                            while idx < ('cd', 100).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 230] = this.address
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 262] = block.timestamp
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + (32 * ('cd', 100).length) + -mem[64] + 322]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _897 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _903 = mem[_897]
                            require mem[_897] <= test266151307()
                            require _897 + return_data.size > _897 + mem[_897] + 31
                            _909 = mem[_897 + mem[_897]]
                            if mem[_897 + mem[_897]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_897 + mem[_897]]) + 1 < 0 or _897 + ceil32(return_data.size) + ceil32(32 * mem[_897 + mem[_897]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _897 + ceil32(return_data.size) + ceil32(32 * mem[_897 + mem[_897]]) + 1
                            mem[_897 + ceil32(return_data.size)] = _909
                            require _903 + (32 * _909) + 32 <= return_data.size
                            mem[_897 + ceil32(return_data.size) + 32 len 32 * _909] = mem[_897 + _903 + 32 len 32 * _909]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(cd[36])
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1025 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1025]:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[4]))
                                staticcall address(cd[4]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1049 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1053 = mem[_1049]
                                _1061 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1053
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = 160
                                _1063 = mem[ceil32(32 * ('cd', 100).length) + 129]
                                mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 100).length) + 129]
                                idx = 0
                                s = ceil32(32 * ('cd', 100).length) + 161
                                t = mem[64] + 196
                                while idx < _1063:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1061 + 100] = this.address
                                mem[_1061 + 132] = block.timestamp
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1061 + (32 * _1063) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1129 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1129] <= test266151307()
                                require _1129 + return_data.size > _1129 + mem[_1129] + 31
                                if mem[_1129 + mem[_1129]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1129 + mem[_1129]]) + 1 < 0 or _1129 + ceil32(return_data.size) + ceil32(32 * mem[_1129 + mem[_1129]]) + 1 > test266151307():
                                    revert with 0, 65
                                require mem[_1129] + (32 * mem[_1129 + mem[_1129]]) + 32 <= return_data.size
                                var111001 = _1129 + mem[_1129] + (32 * mem[_1129 + mem[_1129]]) + 32
                            else:
                                mem[mem[64] + 4] = address(cd[36])
                                mem[mem[64] + 36] = stor1
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[36]), stor1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1050 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1050] == bool(mem[_1050])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[4]))
                                staticcall address(cd[4]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1080 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1084 = mem[_1080]
                                _1087 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1084
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = 160
                                _1091 = mem[ceil32(32 * ('cd', 100).length) + 129]
                                mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 100).length) + 129]
                                idx = 0
                                s = ceil32(32 * ('cd', 100).length) + 161
                                t = mem[64] + 196
                                while idx < _1091:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1087 + 100] = this.address
                                mem[_1087 + 132] = block.timestamp
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1087 + (32 * _1091) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1130 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1130] <= test266151307()
                                require _1130 + return_data.size > _1130 + mem[_1130] + 31
                                if mem[_1130 + mem[_1130]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1130 + mem[_1130]]) + 1 < 0 or _1130 + ceil32(return_data.size) + ceil32(32 * mem[_1130 + mem[_1130]]) + 1 > test266151307():
                                    revert with 0, 65
                                require mem[_1130] + (32 * mem[_1130 + mem[_1130]]) + 32 <= return_data.size
                        else:
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 134] = address(cd[36])
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 166] = stor1
                            require ext_code.size(address(_670))
                            call address(_670).approve(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(cd[36]), stor1
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 130] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 130
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 130] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 134] = cd[68]
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 166] = 1
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 198] = 160
                            mem[ceil32(32 * ('cd', 100).length) + ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 294] = ('cd', 100).length
                            idx = 0
                            s = 160
                            t = mem[64] + 196
                            while idx < ('cd', 100).length:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[mem[64] + 100] = this.address
                            mem[mem[64] + 132] = block.timestamp
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len 96], address(this.address), block.timestamp, mem[mem[64] + 164 len (32 * ('cd', 100).length) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _898 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _904 = mem[_898]
                            require mem[_898] <= test266151307()
                            require _898 + return_data.size > _898 + mem[_898] + 31
                            _910 = mem[_898 + mem[_898]]
                            if mem[_898 + mem[_898]] > test266151307():
                                revert with 0, 65
                            if ceil32(32 * mem[_898 + mem[_898]]) + 1 < 0 or _898 + ceil32(return_data.size) + ceil32(32 * mem[_898 + mem[_898]]) + 1 > test266151307():
                                revert with 0, 65
                            mem[64] = _898 + ceil32(return_data.size) + ceil32(32 * mem[_898 + mem[_898]]) + 1
                            mem[_898 + ceil32(return_data.size)] = _910
                            require _904 + (32 * _910) + 32 <= return_data.size
                            mem[_898 + ceil32(return_data.size) + 32 len 32 * _910] = mem[_898 + _904 + 32 len 32 * _910]
                            mem[mem[64] + 4] = this.address
                            mem[mem[64] + 36] = address(cd[36])
                            require ext_code.size(address(cd[4]))
                            staticcall address(cd[4]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(cd[36])
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1026 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            if mem[_1026]:
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[4]))
                                staticcall address(cd[4]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1051 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1055 = mem[_1051]
                                _1062 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1055
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = 160
                                _1064 = mem[ceil32(32 * ('cd', 100).length) + 129]
                                mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 100).length) + 129]
                                idx = 0
                                s = ceil32(32 * ('cd', 100).length) + 161
                                t = mem[64] + 196
                                while idx < _1064:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1062 + 100] = this.address
                                mem[_1062 + 132] = block.timestamp
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1062 + (32 * _1064) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1131 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1131] <= test266151307()
                                require _1131 + return_data.size > _1131 + mem[_1131] + 31
                                if mem[_1131 + mem[_1131]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1131 + mem[_1131]]) + 1 < 0 or _1131 + ceil32(return_data.size) + ceil32(32 * mem[_1131 + mem[_1131]]) + 1 > test266151307():
                                    revert with 0, 65
                                require mem[_1131] + (32 * mem[_1131 + mem[_1131]]) + 32 <= return_data.size
                            else:
                                mem[mem[64] + 4] = address(cd[36])
                                mem[mem[64] + 36] = stor1
                                require ext_code.size(address(cd[4]))
                                call address(cd[4]).approve(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args address(cd[36]), stor1
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1052 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1052] == bool(mem[_1052])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[4]))
                                staticcall address(cd[4]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1082 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1086 = mem[_1082]
                                _1088 = mem[64]
                                mem[mem[64]] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = _1086
                                mem[mem[64] + 36] = 1
                                mem[mem[64] + 68] = 160
                                _1092 = mem[ceil32(32 * ('cd', 100).length) + 129]
                                mem[mem[64] + 164] = mem[ceil32(32 * ('cd', 100).length) + 129]
                                idx = 0
                                s = ceil32(32 * ('cd', 100).length) + 161
                                t = mem[64] + 196
                                while idx < _1092:
                                    mem[t] = mem[s + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[_1088 + 100] = this.address
                                mem[_1088 + 132] = block.timestamp
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1088 + (32 * _1092) + -mem[64] + 192]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1132 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_1132] <= test266151307()
                                require _1132 + return_data.size > _1132 + mem[_1132] + 31
                                if mem[_1132 + mem[_1132]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1132 + mem[_1132]]) + 1 < 0 or _1132 + ceil32(return_data.size) + ceil32(32 * mem[_1132 + mem[_1132]]) + 1 > test266151307():
                                    revert with 0, 65
                                require mem[_1132] + (32 * mem[_1132 + mem[_1132]]) + 32 <= return_data.size
}



}
