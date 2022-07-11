contract main {




// =====================  Runtime code  =====================


#
#  - sub_a9e01880(?)
#
address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function addAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        require owner == msg.sender
    stor1[address(arg1)] = 1
}

function removeAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[msg.sender]:
        require owner == msg.sender
    require arg1 != msg.sender
    stor1[address(arg1)] = 0
}

function sub_c9c13eca(?) {
    if not stor1[msg.sender]:
        require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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

function sub_c13a541d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
        return 1
    else:
        return 0
}

function sub_b98c491a(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
        return 1
    else:
        return 0
}

function sub_4e96a543(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor1[msg.sender]:
        require owner == msg.sender
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_754c7d24(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not stor1[msg.sender]:
        require owner == msg.sender
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
        require ext_code.size(address(arg2))
        call address(arg2).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_5f4a1b37(?) {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        require owner == msg.sender
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'token1 not approved'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg6
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg6
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer of token1 to contract failed'
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    if address(arg2) == address(arg3):
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg4)
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg6
        mem[(2 * ceil32(return_data.size)) + 228] = 1
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = address(arg5)
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(arg5), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 223
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307():
            revert with 'NH{q', 65
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 32 <= return_data.size
    else:
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 192] = address(arg4)
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = arg6
        mem[(2 * ceil32(return_data.size)) + 260] = 1
        mem[(2 * ceil32(return_data.size)) + 292] = 160
        mem[(2 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 324] = address(arg5)
        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, 1, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), address(arg5), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + 255
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225 > test266151307():
            revert with 'NH{q', 65
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 <= return_data.size
}

function sub_cc99467c(?) {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg5 == address(arg5)
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        require owner == msg.sender
    mem[100] = msg.sender
    mem[132] = this.address
    require ext_code.size(address(arg2))
    staticcall address(arg2).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'token1 not approved'
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = this.address
    mem[ceil32(return_data.size) + 164] = arg7
    require ext_code.size(address(arg2))
    call address(arg2).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg7
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer of token1 to contract failed'
    mem[(2 * ceil32(return_data.size)) + 128] = address(arg2)
    if address(arg2) == address(arg3):
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg4)
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 192] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 196] = arg6
        mem[(2 * ceil32(return_data.size)) + 228] = arg7
        mem[(2 * ceil32(return_data.size)) + 260] = 160
        mem[(2 * ceil32(return_data.size)) + 356] = 2
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 388
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 292] = address(arg5)
        mem[(2 * ceil32(return_data.size)) + 324] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, arg7, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 388 len 64]), address(arg5), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 192
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 192 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 223
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 193 > test266151307():
            revert with 'NH{q', 65
        require mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 192 len 4], Mask(224, 32, arg6) >> 32 + 192]) + 32 <= return_data.size
    else:
        mem[(2 * ceil32(return_data.size)) + 160] = address(arg3)
        mem[(2 * ceil32(return_data.size)) + 192] = address(arg4)
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[(2 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 228] = arg6
        mem[(2 * ceil32(return_data.size)) + 260] = arg7
        mem[(2 * ceil32(return_data.size)) + 292] = 160
        mem[(2 * ceil32(return_data.size)) + 388] = 3
        idx = 0
        s = (2 * ceil32(return_data.size)) + 128
        t = (2 * ceil32(return_data.size)) + 420
        while idx < 3:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(2 * ceil32(return_data.size)) + 324] = address(arg5)
        mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 30
        require ext_code.size(address(arg1))
        call address(arg1).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args arg6, arg7, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 420 len 96]), address(arg5), block.timestamp + 30
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = (4 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 <= test266151307()
        require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + 255
        if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224] > test266151307():
            revert with 'NH{q', 65
        if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 225 > test266151307():
            revert with 'NH{q', 65
        require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, arg6) >> 32 + 224]) + 32 <= return_data.size
}

function sub_a39f7bee(?) {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 132).length) + 97 < 96 or ceil32(32 * ('cd', 132).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[msg.sender]:
        mem[ceil32(32 * ('cd', 132).length) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 132).length) + 133] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[ceil32(32 * ('cd', 132).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'token1 not approved'
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 133] = this.address
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 165] = cd[196]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[196]
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfer of token1 to contract failed'
        if address(cd[36]) == address(cd[68]):
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 2
            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ext_call.return_data[0]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _794 = mem[(32 * idx) + 128]
                _795 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = 1
                mem[mem[64] + 100] = 160
                _805 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129
                u = mem[64] + 228
                while s < _805:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_795 + 132] = address(_794)
                mem[_795 + 164] = block.timestamp + 30
                _1131 = mem[64]
                mem[mem[64]] = _795 + (32 * _805) + -mem[64] + 196
                mem[64] = _795 + (32 * _805) + 228
                mem[_1131 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_1131 + 36 len 28]
                _1141 = mem[_1131]
                s = 0
                while s < _1141:
                    mem[s + _795 + (32 * _805) + 228] = mem[_1131 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1141) > _1141:
                    mem[_795 + (32 * _805) + _1141 + 228] = 0
                call address(cd[4]).mem[_795 + (32 * _805) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_795 + (32 * _805) + 232 len _1141 - 4]
                if return_data.size:
                    mem[64] = _795 + (32 * _805) + ceil32(return_data.size) + 229
                    mem[_795 + (32 * _805) + 228] = return_data.size
                    mem[_795 + (32 * _805) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if gas_remaining >= 125000:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.success
                        continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _801 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _809 = mem[_801]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _809
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _809
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _828 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_828] == bool(mem[_828])
        else:
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 3
            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[68])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ext_call.return_data[0]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _792 = mem[(32 * idx) + 128]
                _793 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = 1
                mem[mem[64] + 100] = 160
                _804 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129
                u = mem[64] + 228
                while s < _804:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_793 + 132] = address(_792)
                mem[_793 + 164] = block.timestamp + 30
                _1128 = mem[64]
                mem[mem[64]] = _793 + (32 * _804) + -mem[64] + 196
                mem[64] = _793 + (32 * _804) + 228
                mem[_1128 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_1128 + 36 len 28]
                _1140 = mem[_1128]
                s = 0
                while s < _1140:
                    mem[s + _793 + (32 * _804) + 228] = mem[_1128 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1140) > _1140:
                    mem[_793 + (32 * _804) + _1140 + 228] = 0
                call address(cd[4]).mem[_793 + (32 * _804) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_793 + (32 * _804) + 232 len _1140 - 4]
                if return_data.size:
                    mem[64] = _793 + (32 * _804) + ceil32(return_data.size) + 229
                    mem[_793 + (32 * _804) + 228] = return_data.size
                    mem[_793 + (32 * _804) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if gas_remaining >= 125000:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.success
                        continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _800 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _808 = mem[_800]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _808
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _808
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _824 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_824] == bool(mem[_824])
    else:
        require owner == msg.sender
        mem[ceil32(32 * ('cd', 132).length) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 132).length) + 133] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[ceil32(32 * ('cd', 132).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'token1 not approved'
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 133] = this.address
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 165] = cd[196]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[196]
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfer of token1 to contract failed'
        if address(cd[36]) == address(cd[68]):
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 2
            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ext_call.return_data[0]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _798 = mem[(32 * idx) + 128]
                _799 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = 1
                mem[mem[64] + 100] = 160
                _807 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129
                u = mem[64] + 228
                while s < _807:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_799 + 132] = address(_798)
                mem[_799 + 164] = block.timestamp + 30
                _1137 = mem[64]
                mem[mem[64]] = _799 + (32 * _807) + -mem[64] + 196
                mem[64] = _799 + (32 * _807) + 228
                mem[_1137 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_1137 + 36 len 28]
                _1143 = mem[_1137]
                s = 0
                while s < _1143:
                    mem[s + _799 + (32 * _807) + 228] = mem[_1137 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1143) > _1143:
                    mem[_799 + (32 * _807) + _1143 + 228] = 0
                call address(cd[4]).mem[_799 + (32 * _807) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_799 + (32 * _807) + 232 len _1143 - 4]
                if return_data.size:
                    mem[64] = _799 + (32 * _807) + ceil32(return_data.size) + 229
                    mem[_799 + (32 * _807) + 228] = return_data.size
                    mem[_799 + (32 * _807) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if gas_remaining >= 125000:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.success
                        continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _803 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _811 = mem[_803]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _811
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _811
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _836 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_836] == bool(mem[_836])
        else:
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 3
            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[68])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ext_call.return_data[0]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _796 = mem[(32 * idx) + 128]
                _797 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = 1
                mem[mem[64] + 100] = 160
                _806 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129
                u = mem[64] + 228
                while s < _806:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 132] = address(_796)
                mem[mem[64] + 164] = block.timestamp + 30
                _1134 = mem[64]
                mem[mem[64]] = (32 * _806) + 196
                mem[64] = mem[64] + (32 * _806) + 228
                mem[_1134 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_1134 + 36 len 28]
                _1142 = mem[_1134]
                s = 0
                while s < _1142:
                    mem[s + _797 + (32 * _806) + 228] = mem[_1134 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1142) <= _1142:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1142 + _797 + (32 * _806) + -mem[64] + 224]
                    if not return_data.size:
                        if not ext_call.success:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1500 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1536 = mem[_1500]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1536
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1536
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1628 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1628] == bool(mem[_1628])
                        else:
                            if gas_remaining >= 125000:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = ext_call.success
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1520 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1562 = mem[_1520]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1562
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1562
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1648] == bool(mem[_1648])
                    else:
                        _1432 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1432] = return_data.size
                        mem[_1432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1501 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1537 = mem[_1501]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1537
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1537
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1629 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1629] == bool(mem[_1629])
                        else:
                            if gas_remaining >= 125000:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = ext_call.success
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1565 = mem[_1521]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1565
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1565
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1649 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1649] == bool(mem[_1649])
                else:
                    mem[_797 + (32 * _806) + _1142 + 228] = 0
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1142 + _797 + (32 * _806) + -mem[64] + 224]
                    if not return_data.size:
                        if not ext_call.success:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1566 = mem[_1522]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1566
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1566
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1650 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1650] == bool(mem[_1650])
                        else:
                            if gas_remaining >= 125000:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = ext_call.success
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1538 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1602 = mem[_1538]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1602
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1602
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1666] == bool(mem[_1666])
                    else:
                        _1438 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1438] = return_data.size
                        mem[_1438 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1567 = mem[_1523]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1567
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1567
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1651 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1651] == bool(mem[_1651])
                        else:
                            if gas_remaining >= 125000:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = ext_call.success
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1539 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1605 = mem[_1539]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1605
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1605
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1667] == bool(mem[_1667])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _802 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _810 = mem[_802]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _810
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _810
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _832 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_832] == bool(mem[_832])
}

function sub_76c2cc03(?) {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 'NH{q', 65
    if ceil32(32 * ('cd', 132).length) + 97 < 96 or ceil32(32 * ('cd', 132).length) + 97 > test266151307():
        revert with 'NH{q', 65
    mem[96] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = 0
    s = cd[132] + 36
    t = 128
    while idx < ('cd', 132).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[0] = msg.sender
    mem[32] = 1
    if stor1[msg.sender]:
        mem[ceil32(32 * ('cd', 132).length) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 132).length) + 133] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[ceil32(32 * ('cd', 132).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'token1 not approved'
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 133] = this.address
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 165] = cd[228]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[228]
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfer of token1 to contract failed'
        if address(cd[36]) == address(cd[68]):
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 2
            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ext_call.return_data[0]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _794 = mem[(32 * idx) + 128]
                _795 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = cd[196]
                mem[mem[64] + 100] = 160
                _805 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129
                u = mem[64] + 228
                while s < _805:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_795 + 132] = address(_794)
                mem[_795 + 164] = block.timestamp + 30
                _1131 = mem[64]
                mem[mem[64]] = _795 + (32 * _805) + -mem[64] + 196
                mem[64] = _795 + (32 * _805) + 228
                mem[_1131 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_1131 + 36 len 28]
                _1141 = mem[_1131]
                s = 0
                while s < _1141:
                    mem[s + _795 + (32 * _805) + 228] = mem[_1131 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1141) > _1141:
                    mem[_795 + (32 * _805) + _1141 + 228] = 0
                call address(cd[4]).mem[_795 + (32 * _805) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_795 + (32 * _805) + 232 len _1141 - 4]
                if return_data.size:
                    mem[64] = _795 + (32 * _805) + ceil32(return_data.size) + 229
                    mem[_795 + (32 * _805) + 228] = return_data.size
                    mem[_795 + (32 * _805) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if gas_remaining >= 125000:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.success
                        continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _801 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _809 = mem[_801]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _809
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _809
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _828 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_828] == bool(mem[_828])
        else:
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 3
            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[68])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ext_call.return_data[0]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _792 = mem[(32 * idx) + 128]
                _793 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = cd[196]
                mem[mem[64] + 100] = 160
                _804 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129
                u = mem[64] + 228
                while s < _804:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_793 + 132] = address(_792)
                mem[_793 + 164] = block.timestamp + 30
                _1128 = mem[64]
                mem[mem[64]] = _793 + (32 * _804) + -mem[64] + 196
                mem[64] = _793 + (32 * _804) + 228
                mem[_1128 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_1128 + 36 len 28]
                _1140 = mem[_1128]
                s = 0
                while s < _1140:
                    mem[s + _793 + (32 * _804) + 228] = mem[_1128 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1140) > _1140:
                    mem[_793 + (32 * _804) + _1140 + 228] = 0
                call address(cd[4]).mem[_793 + (32 * _804) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_793 + (32 * _804) + 232 len _1140 - 4]
                if return_data.size:
                    mem[64] = _793 + (32 * _804) + ceil32(return_data.size) + 229
                    mem[_793 + (32 * _804) + 228] = return_data.size
                    mem[_793 + (32 * _804) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if gas_remaining >= 125000:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.success
                        continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _800 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _808 = mem[_800]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _808
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _808
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _824 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_824] == bool(mem[_824])
    else:
        require owner == msg.sender
        mem[ceil32(32 * ('cd', 132).length) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 132).length) + 133] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[ceil32(32 * ('cd', 132).length) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'token1 not approved'
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 101] = msg.sender
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 133] = this.address
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 165] = cd[228]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[228]
        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfer of token1 to contract failed'
        if address(cd[36]) == address(cd[68]):
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 2
            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ext_call.return_data[0]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _798 = mem[(32 * idx) + 128]
                _799 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = cd[196]
                mem[mem[64] + 100] = 160
                _807 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129
                u = mem[64] + 228
                while s < _807:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[_799 + 132] = address(_798)
                mem[_799 + 164] = block.timestamp + 30
                _1137 = mem[64]
                mem[mem[64]] = _799 + (32 * _807) + -mem[64] + 196
                mem[64] = _799 + (32 * _807) + 228
                mem[_1137 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_1137 + 36 len 28]
                _1143 = mem[_1137]
                s = 0
                while s < _1143:
                    mem[s + _799 + (32 * _807) + 228] = mem[_1137 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1143) > _1143:
                    mem[_799 + (32 * _807) + _1143 + 228] = 0
                call address(cd[4]).mem[_799 + (32 * _807) + 228 len 4] with:
                     gas gas_remaining wei
                    args mem[_799 + (32 * _807) + 232 len _1143 - 4]
                if return_data.size:
                    mem[64] = _799 + (32 * _807) + ceil32(return_data.size) + 229
                    mem[_799 + (32 * _807) + 228] = return_data.size
                    mem[_799 + (32 * _807) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if ext_call.success:
                    if gas_remaining >= 125000:
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = ext_call.success
                        continue 
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_code.size(address(cd[36]))
                call address(cd[36]).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _803 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _811 = mem[_803]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _811
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _811
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _836 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_836] == bool(mem[_836])
        else:
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97] = 3
            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = address(cd[36])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[68])
            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[100])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = ext_call.return_data[0]
            while idx < ('cd', 132).length:
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                _796 = mem[(32 * idx) + 128]
                _797 = mem[64]
                mem[mem[64] + 36] = cd[164]
                mem[mem[64] + 68] = cd[196]
                mem[mem[64] + 100] = 160
                _806 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 97]
                s = 0
                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129
                u = mem[64] + 228
                while s < _806:
                    mem[u] = mem[t + 12 len 20]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                mem[mem[64] + 132] = address(_796)
                mem[mem[64] + 164] = block.timestamp + 30
                _1134 = mem[64]
                mem[mem[64]] = (32 * _806) + 196
                mem[64] = mem[64] + (32 * _806) + 228
                mem[_1134 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_1134 + 36 len 28]
                _1142 = mem[_1134]
                s = 0
                while s < _1142:
                    mem[s + _797 + (32 * _806) + 228] = mem[_1134 + s + 32]
                    s = s + 32
                    continue 
                if ceil32(_1142) <= _1142:
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1142 + _797 + (32 * _806) + -mem[64] + 224]
                    if not return_data.size:
                        if not ext_call.success:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1500 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1536 = mem[_1500]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1536
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1536
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1628 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1628] == bool(mem[_1628])
                        else:
                            if gas_remaining >= 125000:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = ext_call.success
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1520 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1562 = mem[_1520]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1562
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1562
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1648 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1648] == bool(mem[_1648])
                    else:
                        _1432 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1432] = return_data.size
                        mem[_1432 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1501 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1537 = mem[_1501]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1537
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1537
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1629 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1629] == bool(mem[_1629])
                        else:
                            if gas_remaining >= 125000:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = ext_call.success
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1521 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1565 = mem[_1521]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1565
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1565
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1649 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1649] == bool(mem[_1649])
                else:
                    mem[_797 + (32 * _806) + _1142 + 228] = 0
                    call address(cd[4]).mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _1142 + _797 + (32 * _806) + -mem[64] + 224]
                    if not return_data.size:
                        if not ext_call.success:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1522 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1566 = mem[_1522]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1566
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1566
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1650 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1650] == bool(mem[_1650])
                        else:
                            if gas_remaining >= 125000:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = ext_call.success
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1538 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1602 = mem[_1538]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1602
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1602
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1666 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1666] == bool(mem[_1666])
                    else:
                        _1438 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                        mem[_1438] = return_data.size
                        mem[_1438 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1523 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1567 = mem[_1523]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1567
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1567
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1651 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1651] == bool(mem[_1651])
                        else:
                            if gas_remaining >= 125000:
                                if idx == -1:
                                    revert with 'NH{q', 17
                                idx = idx + 1
                                s = ext_call.success
                                continue 
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1539 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1605 = mem[_1539]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _1605
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _1605
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1667 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_1667] == bool(mem[_1667])
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _802 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _810 = mem[_802]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = _810
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, _810
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _832 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_832] == bool(mem[_832])
}

function _fallback() payable {
    if calldata.size < 4:
    if unknown_0xa9e01880(?????) > uint32(call.func_hash) >> 224:
        if unknown_0x754c7d24(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x485d7d94(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if not stor1[msg.sender]:
                    require owner == msg.sender
                require address(cd[4]) != msg.sender
                stor1[address(cd[4])] = 0
            else:
                if unknown_0x4e96a543(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    if not stor1[msg.sender]:
                        require owner == msg.sender
                    require ext_code.size(address(cd[4]))
                    staticcall address(cd[4]).0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_code.size(address(cd[4]))
                    call address(cd[4]).0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                else:
                    if uint32(call.func_hash) >> 224 != unknown_0x5f4a1b37(?????):
                        if unknown_0x715018a6(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            if owner != msg.sender:
                                revert with 0, 'Ownable: caller is not the owner'
                            owner = 0
                            emit OwnershipTransferred(owner, 0);
                    else:
                        require not msg.value
                        require calldata.size - 4 >= 192
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        require cd[68] == address(cd[68])
                        require cd[100] == address(cd[100])
                        require cd[132] == address(cd[132])
                        mem[0] = msg.sender
                        mem[32] = 1
                        if not stor1[msg.sender]:
                            require owner == msg.sender
                        mem[132] = msg.sender
                        mem[164] = this.address
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'token1 not approved'
                        mem[ceil32(return_data.size) + 132] = msg.sender
                        mem[ceil32(return_data.size) + 164] = this.address
                        mem[ceil32(return_data.size) + 196] = cd[164]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, cd[164]
                        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer of token1 to contract failed'
                        mem[(2 * ceil32(return_data.size)) + 160] = address(cd[36])
                        if address(cd[36]) == address(cd[68]):
                            mem[(2 * ceil32(return_data.size)) + 192] = address(cd[100])
                            if 30 > !block.timestamp:
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 224] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 228] = cd[164]
                            mem[(2 * ceil32(return_data.size)) + 260] = 1
                            mem[(2 * ceil32(return_data.size)) + 292] = 160
                            mem[(2 * ceil32(return_data.size)) + 388] = 2
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 160
                            t = (2 * ceil32(return_data.size)) + 420
                            while idx < 2:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 324] = address(cd[132])
                            mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 30
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[164], 1, Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64]), address(cd[132]), block.timestamp + 30
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 224
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + 255
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + 224] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + 224]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + 224]) + 225 > test266151307():
                                revert with 'NH{q', 65
                            require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + 224]) + 32 <= return_data.size
                        else:
                            mem[(2 * ceil32(return_data.size)) + 192] = address(cd[68])
                            mem[(2 * ceil32(return_data.size)) + 224] = address(cd[100])
                            if 30 > !block.timestamp:
                                revert with 'NH{q', 17
                            mem[(2 * ceil32(return_data.size)) + 256] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(2 * ceil32(return_data.size)) + 260] = cd[164]
                            mem[(2 * ceil32(return_data.size)) + 292] = 1
                            mem[(2 * ceil32(return_data.size)) + 324] = 160
                            mem[(2 * ceil32(return_data.size)) + 420] = 3
                            idx = 0
                            s = (2 * ceil32(return_data.size)) + 160
                            t = (2 * ceil32(return_data.size)) + 452
                            while idx < 3:
                                mem[t] = mem[s + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(2 * ceil32(return_data.size)) + 356] = address(cd[132])
                            mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp + 30
                            require ext_code.size(address(cd[4]))
                            call address(cd[4]).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args cd[164], 1, Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 452 len 96]), address(cd[132]), block.timestamp + 30
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (4 * ceil32(return_data.size)) + 256
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 <= test266151307()
                            require (2 * ceil32(return_data.size)) + return_data.size + 256 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + 287
                            if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + 256] > test266151307():
                                revert with 'NH{q', 65
                            if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + 256]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + 256]) + 257 > test266151307():
                                revert with 'NH{q', 65
                            require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + 256]) + 32 <= return_data.size
        else:
            if unknown_0x754c7d24(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 64
                require cd[4] == address(cd[4])
                require cd[36] == address(cd[36])
                if not stor1[msg.sender]:
                    require owner == msg.sender
                require ext_code.size(address(cd[36]))
                staticcall address(cd[36]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[4])
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                    require ext_code.size(address(cd[36]))
                    call address(cd[36]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
            else:
                if unknown_0x76c2cc03(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 256
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    require cd[68] == address(cd[68])
                    require cd[100] == address(cd[100])
                    require cd[132] <= test266151307()
                    require cd[132] + 35 < calldata.size
                    if ('cd', 132).length > test266151307():
                        revert with 'NH{q', 65
                    if ceil32(32 * ('cd', 132).length) + 129 < 128 or ceil32(32 * ('cd', 132).length) + 129 > test266151307():
                        revert with 'NH{q', 65
                    mem[128] = ('cd', 132).length
                    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                    idx = 0
                    s = cd[132] + 36
                    t = 160
                    while idx < ('cd', 132).length:
                        require cd[s] == address(cd[s])
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[0] = msg.sender
                    mem[32] = 1
                    if stor1[msg.sender]:
                        mem[ceil32(32 * ('cd', 132).length) + 133] = msg.sender
                        mem[ceil32(32 * ('cd', 132).length) + 165] = this.address
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[ceil32(32 * ('cd', 132).length) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'token1 not approved'
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 133] = msg.sender
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 165] = this.address
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = cd[228]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, cd[228]
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer of token1 to contract failed'
                        if address(cd[36]) == address(cd[68]):
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = 2
                            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[36])
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[100])
                            if 30 > !block.timestamp:
                                revert with 'NH{q', 17
                            idx = 0
                            s = ext_call.return_data[0]
                            while idx < ('cd', 132).length:
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                _5810 = mem[(32 * idx) + 160]
                                _5811 = mem[64]
                                mem[mem[64] + 36] = cd[164]
                                mem[mem[64] + 68] = cd[196]
                                mem[mem[64] + 100] = 160
                                _5837 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                s = 0
                                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161
                                u = mem[64] + 228
                                while s < _5837:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_5811 + 132] = address(_5810)
                                mem[_5811 + 164] = block.timestamp + 30
                                _8419 = mem[64]
                                mem[mem[64]] = _5811 + (32 * _5837) + -mem[64] + 196
                                mem[64] = _5811 + (32 * _5837) + 228
                                mem[_8419 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_8419 + 36 len 28]
                                _8537 = mem[_8419]
                                s = 0
                                while s < _8537:
                                    mem[s + _5811 + (32 * _5837) + 228] = mem[_8419 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8537) > _8537:
                                    mem[_5811 + (32 * _5837) + _8537 + 228] = 0
                                call address(cd[4]).mem[_5811 + (32 * _5837) + 228 len 4] with:
                                     gas gas_remaining wei
                                    args mem[_5811 + (32 * _5837) + 232 len _8537 - 4]
                                if return_data.size:
                                    mem[64] = _5811 + (32 * _5837) + ceil32(return_data.size) + 229
                                    mem[_5811 + (32 * _5837) + 228] = return_data.size
                                    mem[_5811 + (32 * _5837) + 260 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if ext_call.success:
                                    if gas_remaining >= 125000:
                                        if idx == -1:
                                            revert with 'NH{q', 17
                                        idx = idx + 1
                                        s = ext_call.success
                                        continue 
                                require ext_code.size(address(cd[36]))
                                staticcall address(cd[36]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5825 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5853 = mem[_5825]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _5853
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _5853
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5948 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5948] == bool(mem[_5948])
                        else:
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = 3
                            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 257
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[36])
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[68])
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225] = address(cd[100])
                            if 30 > !block.timestamp:
                                revert with 'NH{q', 17
                            idx = 0
                            s = ext_call.return_data[0]
                            while idx < ('cd', 132).length:
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                _5808 = mem[(32 * idx) + 160]
                                _5809 = mem[64]
                                mem[mem[64] + 36] = cd[164]
                                mem[mem[64] + 68] = cd[196]
                                mem[mem[64] + 100] = 160
                                _5836 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                s = 0
                                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161
                                u = mem[64] + 228
                                while s < _5836:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 132] = address(_5808)
                                mem[mem[64] + 164] = block.timestamp + 30
                                _8416 = mem[64]
                                mem[mem[64]] = (32 * _5836) + 196
                                mem[64] = mem[64] + (32 * _5836) + 228
                                mem[_8416 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_8416 + 36 len 28]
                                _8536 = mem[_8416]
                                s = 0
                                while s < _8536:
                                    mem[s + _5809 + (32 * _5836) + 228] = mem[_8416 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8536) <= _8536:
                                    call address(cd[4]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _8536 + _5809 + (32 * _5836) + -mem[64] + 224]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11504 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11712 = mem[_11504]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11712
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11712
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11888 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11888] == bool(mem[_11888])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11616 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11746 = mem[_11616]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11746
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11746
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11936 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11936] == bool(mem[_11936])
                                    else:
                                        _10648 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_10648] = return_data.size
                                        mem[_10648 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11505 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11713 = mem[_11505]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11713
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11713
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11889 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11889] == bool(mem[_11889])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11617 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11749 = mem[_11617]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11749
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11749
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11937 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11937] == bool(mem[_11937])
                                else:
                                    mem[_5809 + (32 * _5836) + _8536 + 228] = 0
                                    call address(cd[4]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _8536 + _5809 + (32 * _5836) + -mem[64] + 224]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11618 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11750 = mem[_11618]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11750
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11750
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11938 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11938] == bool(mem[_11938])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11714 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11814 = mem[_11714]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11814
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11814
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11970 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11970] == bool(mem[_11970])
                                    else:
                                        _10728 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_10728] = return_data.size
                                        mem[_10728 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11619 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11751 = mem[_11619]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11751
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11751
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11939 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11939] == bool(mem[_11939])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11715 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11817 = mem[_11715]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11817
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11817
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11971 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11971] == bool(mem[_11971])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5824 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5852 = mem[_5824]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _5852
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _5852
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5944 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5944] == bool(mem[_5944])
                    else:
                        require owner == msg.sender
                        mem[ceil32(32 * ('cd', 132).length) + 133] = msg.sender
                        mem[ceil32(32 * ('cd', 132).length) + 165] = this.address
                        require ext_code.size(address(cd[36]))
                        staticcall address(cd[36]).0xdd62ed3e with:
                                gas gas_remaining wei
                               args msg.sender, this.address
                        mem[ceil32(32 * ('cd', 132).length) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'token1 not approved'
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 133] = msg.sender
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 165] = this.address
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = cd[228]
                        require ext_code.size(address(cd[36]))
                        call address(cd[36]).0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, this.address, cd[228]
                        mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        if not ext_call.return_data[0]:
                            revert with 0, 'transfer of token1 to contract failed'
                        if address(cd[36]) == address(cd[68]):
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = 2
                            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[36])
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[100])
                            if 30 > !block.timestamp:
                                revert with 'NH{q', 17
                            idx = 0
                            s = ext_call.return_data[0]
                            while idx < ('cd', 132).length:
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                _5814 = mem[(32 * idx) + 160]
                                _5815 = mem[64]
                                mem[mem[64] + 36] = cd[164]
                                mem[mem[64] + 68] = cd[196]
                                mem[mem[64] + 100] = 160
                                _5839 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                s = 0
                                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161
                                u = mem[64] + 228
                                while s < _5839:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 132] = address(_5814)
                                mem[mem[64] + 164] = block.timestamp + 30
                                _8425 = mem[64]
                                mem[mem[64]] = (32 * _5839) + 196
                                mem[64] = mem[64] + (32 * _5839) + 228
                                mem[_8425 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_8425 + 36 len 28]
                                _8539 = mem[_8425]
                                s = 0
                                while s < _8539:
                                    mem[s + _5815 + (32 * _5839) + 228] = mem[_8425 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8539) <= _8539:
                                    call address(cd[4]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _8539 + _5815 + (32 * _5839) + -mem[64] + 224]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11522 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11724 = mem[_11522]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11724
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11724
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11906 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11906] == bool(mem[_11906])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11628 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11770 = mem[_11628]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11770
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11770
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11948 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11948] == bool(mem[_11948])
                                    else:
                                        _10654 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_10654] = return_data.size
                                        mem[_10654 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11523 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11725 = mem[_11523]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11725
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11725
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11907 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11907] == bool(mem[_11907])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11629 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11773 = mem[_11629]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11773
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11773
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11949 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11949] == bool(mem[_11949])
                                else:
                                    mem[_5815 + (32 * _5839) + _8539 + 228] = 0
                                    call address(cd[4]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _8539 + _5815 + (32 * _5839) + -mem[64] + 224]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11630 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11774 = mem[_11630]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11774
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11774
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11950 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11950] == bool(mem[_11950])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11726 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11844 = mem[_11726]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11844
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11844
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11982 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11982] == bool(mem[_11982])
                                    else:
                                        _10731 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_10731] = return_data.size
                                        mem[_10731 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11631 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11775 = mem[_11631]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11775
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11775
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11951 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11951] == bool(mem[_11951])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11727 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11847 = mem[_11727]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11847
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11847
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11983 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11983] == bool(mem[_11983])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5827 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5855 = mem[_5827]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _5855
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _5855
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5956 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5956] == bool(mem[_5956])
                        else:
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = 3
                            mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 257
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[36])
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[68])
                            mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225] = address(cd[100])
                            if 30 > !block.timestamp:
                                revert with 'NH{q', 17
                            idx = 0
                            s = ext_call.return_data[0]
                            while idx < ('cd', 132).length:
                                if idx >= mem[128]:
                                    revert with 'NH{q', 50
                                _5812 = mem[(32 * idx) + 160]
                                _5813 = mem[64]
                                mem[mem[64] + 36] = cd[164]
                                mem[mem[64] + 68] = cd[196]
                                mem[mem[64] + 100] = 160
                                _5838 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                s = 0
                                t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161
                                u = mem[64] + 228
                                while s < _5838:
                                    mem[u] = mem[t + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[mem[64] + 132] = address(_5812)
                                mem[mem[64] + 164] = block.timestamp + 30
                                _8422 = mem[64]
                                mem[mem[64]] = (32 * _5838) + 196
                                mem[64] = mem[64] + (32 * _5838) + 228
                                mem[_8422 + 32] = 0x8803dbee00000000000000000000000000000000000000000000000000000000 or mem[_8422 + 36 len 28]
                                _8538 = mem[_8422]
                                s = 0
                                while s < _8538:
                                    mem[s + _5813 + (32 * _5838) + 228] = mem[_8422 + s + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(_8538) <= _8538:
                                    call address(cd[4]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _8538 + _5813 + (32 * _5838) + -mem[64] + 224]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11516 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11720 = mem[_11516]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11720
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11720
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11900 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11900] == bool(mem[_11900])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11624 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11762 = mem[_11624]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11762
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11762
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11944 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11944] == bool(mem[_11944])
                                    else:
                                        _10652 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_10652] = return_data.size
                                        mem[_10652 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11517 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11721 = mem[_11517]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11721
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11721
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11901 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11901] == bool(mem[_11901])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11625 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11765 = mem[_11625]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11765
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11765
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11945 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11945] == bool(mem[_11945])
                                else:
                                    mem[_5813 + (32 * _5838) + _8538 + 228] = 0
                                    call address(cd[4]).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _8538 + _5813 + (32 * _5838) + -mem[64] + 224]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11626 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11766 = mem[_11626]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11766
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11766
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11946 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11946] == bool(mem[_11946])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11722 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11834 = mem[_11722]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11834
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11834
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11978 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11978] == bool(mem[_11978])
                                    else:
                                        _10730 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size) + 1
                                        mem[_10730] = return_data.size
                                        mem[_10730 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11627 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11767 = mem[_11627]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11767
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11767
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11947 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11947] == bool(mem[_11947])
                                        else:
                                            if gas_remaining >= 125000:
                                                if idx == -1:
                                                    revert with 'NH{q', 17
                                                idx = idx + 1
                                                s = ext_call.success
                                                continue 
                                            mem[mem[64] + 4] = this.address
                                            require ext_code.size(address(cd[36]))
                                            staticcall address(cd[36]).0x70a08231 with:
                                                    gas gas_remaining wei
                                                   args this.address
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11723 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _11837 = mem[_11723]
                                            mem[mem[64] + 4] = msg.sender
                                            mem[mem[64] + 36] = _11837
                                            require ext_code.size(address(cd[36]))
                                            call address(cd[36]).0xa9059cbb with:
                                                 gas gas_remaining wei
                                                args msg.sender, _11837
                                            mem[mem[64]] = ext_call.return_data[0]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _11979 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            require mem[_11979] == bool(mem[_11979])
                            mem[mem[64] + 4] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5826 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _5854 = mem[_5826]
                            mem[mem[64] + 4] = msg.sender
                            mem[mem[64] + 36] = _5854
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, _5854
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _5952 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            require mem[_5952] == bool(mem[_5952])
                else:
                    if unknown_0x8da5cb5b(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return owner
                    if unknown_0xa39f7bee(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 224
                        require cd[4] == address(cd[4])
                        require cd[36] == address(cd[36])
                        require cd[68] == address(cd[68])
                        require cd[100] == address(cd[100])
                        require cd[132] <= test266151307()
                        require cd[132] + 35 < calldata.size
                        if ('cd', 132).length > test266151307():
                            revert with 'NH{q', 65
                        if ceil32(32 * ('cd', 132).length) + 129 < 128 or ceil32(32 * ('cd', 132).length) + 129 > test266151307():
                            revert with 'NH{q', 65
                        mem[128] = ('cd', 132).length
                        require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
                        idx = 0
                        s = cd[132] + 36
                        t = 160
                        while idx < ('cd', 132).length:
                            require cd[s] == address(cd[s])
                            mem[t] = cd[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[0] = msg.sender
                        mem[32] = 1
                        if stor1[msg.sender]:
                            mem[ceil32(32 * ('cd', 132).length) + 133] = msg.sender
                            mem[ceil32(32 * ('cd', 132).length) + 165] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[ceil32(32 * ('cd', 132).length) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'token1 not approved'
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 133] = msg.sender
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 165] = this.address
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = cd[196]
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, cd[196]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer of token1 to contract failed'
                            if address(cd[36]) == address(cd[68]):
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = 2
                                mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[36])
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[100])
                                if 30 > !block.timestamp:
                                    revert with 'NH{q', 17
                                idx = 0
                                s = ext_call.return_data[0]
                                while idx < ('cd', 132).length:
                                    if idx >= mem[128]:
                                        revert with 'NH{q', 50
                                    _5818 = mem[(32 * idx) + 160]
                                    _5819 = mem[64]
                                    mem[mem[64] + 36] = cd[164]
                                    mem[mem[64] + 68] = 1
                                    mem[mem[64] + 100] = 160
                                    _5841 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                    mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                    s = 0
                                    t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161
                                    u = mem[64] + 228
                                    while s < _5841:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 132] = address(_5818)
                                    mem[mem[64] + 164] = block.timestamp + 30
                                    _8431 = mem[64]
                                    mem[mem[64]] = (32 * _5841) + 196
                                    mem[64] = mem[64] + (32 * _5841) + 228
                                    mem[_8431 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_8431 + 36 len 28]
                                    _8541 = mem[_8431]
                                    s = 0
                                    while s < _8541:
                                        mem[s + _5819 + (32 * _5841) + 228] = mem[_8431 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8541) <= _8541:
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8541 + _5819 + (32 * _5841) + -mem[64] + 224]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11534 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11732 = mem[_11534]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11732
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11732
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11918 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11918] == bool(mem[_11918])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11636 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11786 = mem[_11636]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11786
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11786
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11956 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11956] == bool(mem[_11956])
                                        else:
                                            _10658 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_10658] = return_data.size
                                            mem[_10658 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11535 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11733 = mem[_11535]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11733
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11733
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11919 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11919] == bool(mem[_11919])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11637 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11789 = mem[_11637]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11789
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11789
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11957 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11957] == bool(mem[_11957])
                                    else:
                                        mem[_5819 + (32 * _5841) + _8541 + 228] = 0
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8541 + _5819 + (32 * _5841) + -mem[64] + 224]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11638 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11790 = mem[_11638]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11790
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11790
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11958 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11958] == bool(mem[_11958])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11734 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11864 = mem[_11734]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11864
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11864
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11990 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11990] == bool(mem[_11990])
                                        else:
                                            _10733 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_10733] = return_data.size
                                            mem[_10733 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11639 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11791 = mem[_11639]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11791
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11791
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11959 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11959] == bool(mem[_11959])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11735 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11867 = mem[_11735]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11867
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11867
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11991 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11991] == bool(mem[_11991])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[36]))
                                staticcall address(cd[36]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5829 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5857 = mem[_5829]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _5857
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _5857
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5964 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5964] == bool(mem[_5964])
                            else:
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = 3
                                mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 257
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[36])
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[68])
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225] = address(cd[100])
                                if 30 > !block.timestamp:
                                    revert with 'NH{q', 17
                                idx = 0
                                s = ext_call.return_data[0]
                                while idx < ('cd', 132).length:
                                    if idx >= mem[128]:
                                        revert with 'NH{q', 50
                                    _5816 = mem[(32 * idx) + 160]
                                    _5817 = mem[64]
                                    mem[mem[64] + 36] = cd[164]
                                    mem[mem[64] + 68] = 1
                                    mem[mem[64] + 100] = 160
                                    _5840 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                    mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                    s = 0
                                    t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161
                                    u = mem[64] + 228
                                    while s < _5840:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 132] = address(_5816)
                                    mem[mem[64] + 164] = block.timestamp + 30
                                    _8428 = mem[64]
                                    mem[mem[64]] = (32 * _5840) + 196
                                    mem[64] = mem[64] + (32 * _5840) + 228
                                    mem[_8428 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_8428 + 36 len 28]
                                    _8540 = mem[_8428]
                                    s = 0
                                    while s < _8540:
                                        mem[s + _5817 + (32 * _5840) + 228] = mem[_8428 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8540) <= _8540:
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8540 + _5817 + (32 * _5840) + -mem[64] + 224]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11528 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11728 = mem[_11528]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11728
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11728
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11912 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11912] == bool(mem[_11912])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11632 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11778 = mem[_11632]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11778
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11778
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11952 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11952] == bool(mem[_11952])
                                        else:
                                            _10656 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_10656] = return_data.size
                                            mem[_10656 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11529 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11729 = mem[_11529]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11729
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11729
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11913 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11913] == bool(mem[_11913])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11633 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11781 = mem[_11633]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11781
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11781
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11953 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11953] == bool(mem[_11953])
                                    else:
                                        mem[_5817 + (32 * _5840) + _8540 + 228] = 0
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8540 + _5817 + (32 * _5840) + -mem[64] + 224]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11634 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11782 = mem[_11634]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11782
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11782
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11954 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11954] == bool(mem[_11954])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11730 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11854 = mem[_11730]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11854
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11854
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11986 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11986] == bool(mem[_11986])
                                        else:
                                            _10732 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_10732] = return_data.size
                                            mem[_10732 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11635 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11783 = mem[_11635]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11783
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11783
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11955 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11955] == bool(mem[_11955])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11731 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11857 = mem[_11731]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11857
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11857
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11987 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11987] == bool(mem[_11987])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[36]))
                                staticcall address(cd[36]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5828 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5856 = mem[_5828]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _5856
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _5856
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5960 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5960] == bool(mem[_5960])
                        else:
                            require owner == msg.sender
                            mem[ceil32(32 * ('cd', 132).length) + 133] = msg.sender
                            mem[ceil32(32 * ('cd', 132).length) + 165] = this.address
                            require ext_code.size(address(cd[36]))
                            staticcall address(cd[36]).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args msg.sender, this.address
                            mem[ceil32(32 * ('cd', 132).length) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'token1 not approved'
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 133] = msg.sender
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 165] = this.address
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 197] = cd[196]
                            require ext_code.size(address(cd[36]))
                            call address(cd[36]).0x23b872dd with:
                                 gas gas_remaining wei
                                args msg.sender, this.address, cd[196]
                            mem[ceil32(32 * ('cd', 132).length) + ceil32(return_data.size) + 129] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                            if not ext_call.return_data[0]:
                                revert with 0, 'transfer of token1 to contract failed'
                            if address(cd[36]) == address(cd[68]):
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = 2
                                mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[36])
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[100])
                                if 30 > !block.timestamp:
                                    revert with 'NH{q', 17
                                idx = 0
                                s = ext_call.return_data[0]
                                while idx < ('cd', 132).length:
                                    if idx >= mem[128]:
                                        revert with 'NH{q', 50
                                    _5822 = mem[(32 * idx) + 160]
                                    _5823 = mem[64]
                                    mem[mem[64] + 36] = cd[164]
                                    mem[mem[64] + 68] = 1
                                    mem[mem[64] + 100] = 160
                                    _5843 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                    mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                    s = 0
                                    t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161
                                    u = mem[64] + 228
                                    while s < _5843:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 132] = address(_5822)
                                    mem[mem[64] + 164] = block.timestamp + 30
                                    _8437 = mem[64]
                                    mem[mem[64]] = (32 * _5843) + 196
                                    mem[64] = mem[64] + (32 * _5843) + 228
                                    mem[_8437 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_8437 + 36 len 28]
                                    _8543 = mem[_8437]
                                    s = 0
                                    while s < _8543:
                                        mem[s + _5823 + (32 * _5843) + 228] = mem[_8437 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8543) <= _8543:
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8543 + _5823 + (32 * _5843) + -mem[64] + 224]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11546 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11740 = mem[_11546]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11740
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11740
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11930 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11930] == bool(mem[_11930])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11644 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11802 = mem[_11644]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11802
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11802
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11964 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11964] == bool(mem[_11964])
                                        else:
                                            _10662 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_10662] = return_data.size
                                            mem[_10662 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11547 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11741 = mem[_11547]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11741
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11741
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11931 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11931] == bool(mem[_11931])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11645 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11805 = mem[_11645]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11805
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11805
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11965 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11965] == bool(mem[_11965])
                                    else:
                                        mem[_5823 + (32 * _5843) + _8543 + 228] = 0
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8543 + _5823 + (32 * _5843) + -mem[64] + 224]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11646 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11806 = mem[_11646]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11806
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11806
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11966 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11966] == bool(mem[_11966])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11742 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11884 = mem[_11742]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11884
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11884
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11998 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11998] == bool(mem[_11998])
                                        else:
                                            _10735 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_10735] = return_data.size
                                            mem[_10735 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11647 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11807 = mem[_11647]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11807
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11807
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11967 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11967] == bool(mem[_11967])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11743 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11887 = mem[_11743]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11887
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11887
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11999 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11999] == bool(mem[_11999])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[36]))
                                staticcall address(cd[36]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5831 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5859 = mem[_5831]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _5859
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _5859
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5972 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5972] == bool(mem[_5972])
                            else:
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129] = 3
                                mem[64] = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 257
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161] = address(cd[36])
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 193] = address(cd[68])
                                mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 225] = address(cd[100])
                                if 30 > !block.timestamp:
                                    revert with 'NH{q', 17
                                idx = 0
                                s = ext_call.return_data[0]
                                while idx < ('cd', 132).length:
                                    if idx >= mem[128]:
                                        revert with 'NH{q', 50
                                    _5820 = mem[(32 * idx) + 160]
                                    _5821 = mem[64]
                                    mem[mem[64] + 36] = cd[164]
                                    mem[mem[64] + 68] = 1
                                    mem[mem[64] + 100] = 160
                                    _5842 = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                    mem[mem[64] + 196] = mem[ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 129]
                                    s = 0
                                    t = ceil32(32 * ('cd', 132).length) + (2 * ceil32(return_data.size)) + 161
                                    u = mem[64] + 228
                                    while s < _5842:
                                        mem[u] = mem[t + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[mem[64] + 132] = address(_5820)
                                    mem[mem[64] + 164] = block.timestamp + 30
                                    _8434 = mem[64]
                                    mem[mem[64]] = (32 * _5842) + 196
                                    mem[64] = mem[64] + (32 * _5842) + 228
                                    mem[_8434 + 32] = 0x38ed173900000000000000000000000000000000000000000000000000000000 or mem[_8434 + 36 len 28]
                                    _8542 = mem[_8434]
                                    s = 0
                                    while s < _8542:
                                        mem[s + _5821 + (32 * _5842) + 228] = mem[_8434 + s + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(_8542) <= _8542:
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8542 + _5821 + (32 * _5842) + -mem[64] + 224]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11540 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11736 = mem[_11540]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11736
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11736
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11924 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11924] == bool(mem[_11924])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11640 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11794 = mem[_11640]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11794
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11794
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11960 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11960] == bool(mem[_11960])
                                        else:
                                            _10660 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_10660] = return_data.size
                                            mem[_10660 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11541 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11737 = mem[_11541]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11737
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11737
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11925 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11925] == bool(mem[_11925])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11641 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11797 = mem[_11641]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11797
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11797
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11961 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11961] == bool(mem[_11961])
                                    else:
                                        mem[_5821 + (32 * _5842) + _8542 + 228] = 0
                                        call address(cd[4]).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _8542 + _5821 + (32 * _5842) + -mem[64] + 224]
                                        if not return_data.size:
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11642 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11798 = mem[_11642]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11798
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11798
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11962 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11962] == bool(mem[_11962])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11738 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11874 = mem[_11738]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11874
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11874
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11994 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11994] == bool(mem[_11994])
                                        else:
                                            _10734 = mem[64]
                                            mem[64] = mem[64] + ceil32(return_data.size) + 1
                                            mem[_10734] = return_data.size
                                            mem[_10734 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11643 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11799 = mem[_11643]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11799
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11799
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11963 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11963] == bool(mem[_11963])
                                            else:
                                                if gas_remaining >= 125000:
                                                    if idx == -1:
                                                        revert with 'NH{q', 17
                                                    idx = idx + 1
                                                    s = ext_call.success
                                                    continue 
                                                mem[mem[64] + 4] = this.address
                                                require ext_code.size(address(cd[36]))
                                                staticcall address(cd[36]).0x70a08231 with:
                                                        gas gas_remaining wei
                                                       args this.address
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11739 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _11877 = mem[_11739]
                                                mem[mem[64] + 4] = msg.sender
                                                mem[mem[64] + 36] = _11877
                                                require ext_code.size(address(cd[36]))
                                                call address(cd[36]).0xa9059cbb with:
                                                     gas gas_remaining wei
                                                    args msg.sender, _11877
                                                mem[mem[64]] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _11995 = mem[64]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                require mem[_11995] == bool(mem[_11995])
                                mem[mem[64] + 4] = this.address
                                require ext_code.size(address(cd[36]))
                                staticcall address(cd[36]).0x70a08231 with:
                                        gas gas_remaining wei
                                       args this.address
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5830 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _5858 = mem[_5830]
                                mem[mem[64] + 4] = msg.sender
                                mem[mem[64] + 36] = _5858
                                require ext_code.size(address(cd[36]))
                                call address(cd[36]).0xa9059cbb with:
                                     gas gas_remaining wei
                                    args msg.sender, _5858
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _5968 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                require mem[_5968] == bool(mem[_5968])
    if unknown_0xcc99467c(?????) <= uint32(call.func_hash) >> 224:
        if unknown_0xf2fde38b(?????) <= uint32(call.func_hash) >> 224:
            if unknown_0xf2fde38b(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if owner != msg.sender:
                    revert with 0, 'Ownable: caller is not the owner'
                if not address(cd[4]):
                    revert with 0, 'Ownable: new owner is the zero address'
                owner = address(cd[4])
                emit OwnershipTransferred(owner, address(cd[4]));
            if uint32(call.func_hash) >> 224 != unknown_0xf8b2cb4f(?????):
                if uint32(call.func_hash) >> 224 != unknown_0xfe9fbb80(?????):
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                return bool(stor1[cd[4]])
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        if uint32(call.func_hash) >> 224 != unknown_0xcc99467c(?????):
            if unknown_0xcf1c316a(?????) == uint32(call.func_hash) >> 224:
                require not msg.value
                require calldata.size - 4 >= 32
                require cd[4] == address(cd[4])
                if not stor1[msg.sender]:
                    require owner == msg.sender
                stor1[address(cd[4])] = 1
        else:
            require not msg.value
            require calldata.size - 4 >= 224
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require cd[68] == address(cd[68])
            require cd[100] == address(cd[100])
            require cd[132] == address(cd[132])
            mem[0] = msg.sender
            mem[32] = 1
            if not stor1[msg.sender]:
                require owner == msg.sender
            mem[132] = msg.sender
            mem[164] = this.address
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
            mem[128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
                revert with 0, 'token1 not approved'
            mem[ceil32(return_data.size) + 132] = msg.sender
            mem[ceil32(return_data.size) + 164] = this.address
            mem[ceil32(return_data.size) + 196] = cd[196]
            require ext_code.size(address(cd[36]))
            call address(cd[36]).0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, this.address, cd[196]
            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'transfer of token1 to contract failed'
            mem[(2 * ceil32(return_data.size)) + 160] = address(cd[36])
            if address(cd[36]) == address(cd[68]):
                mem[(2 * ceil32(return_data.size)) + 192] = address(cd[100])
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 224] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 228] = cd[164]
                mem[(2 * ceil32(return_data.size)) + 260] = cd[196]
                mem[(2 * ceil32(return_data.size)) + 292] = 160
                mem[(2 * ceil32(return_data.size)) + 388] = 2
                idx = 0
                s = (2 * ceil32(return_data.size)) + 160
                t = (2 * ceil32(return_data.size)) + 420
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 324] = address(cd[132])
                mem[(2 * ceil32(return_data.size)) + 356] = block.timestamp + 30
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[164], cd[196], Array(len=2, data=mem[(2 * ceil32(return_data.size)) + 420 len 64]), address(cd[132]), block.timestamp + 30
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 224
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 224 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + 255
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + 224] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + 224]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + 224]) + 225 > test266151307():
                    revert with 'NH{q', 65
                require mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 224 len 4], Mask(224, 32, cd[164]) >> 32 + 224]) + 32 <= return_data.size
            else:
                mem[(2 * ceil32(return_data.size)) + 192] = address(cd[68])
                mem[(2 * ceil32(return_data.size)) + 224] = address(cd[100])
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                mem[(2 * ceil32(return_data.size)) + 256] = 0x8803dbee00000000000000000000000000000000000000000000000000000000
                mem[(2 * ceil32(return_data.size)) + 260] = cd[164]
                mem[(2 * ceil32(return_data.size)) + 292] = cd[196]
                mem[(2 * ceil32(return_data.size)) + 324] = 160
                mem[(2 * ceil32(return_data.size)) + 420] = 3
                idx = 0
                s = (2 * ceil32(return_data.size)) + 160
                t = (2 * ceil32(return_data.size)) + 452
                while idx < 3:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(2 * ceil32(return_data.size)) + 356] = address(cd[132])
                mem[(2 * ceil32(return_data.size)) + 388] = block.timestamp + 30
                require ext_code.size(address(cd[4]))
                call address(cd[4]).swapTokensForExactTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args cd[164], cd[196], Array(len=3, data=mem[(2 * ceil32(return_data.size)) + 452 len 96]), address(cd[132]), block.timestamp + 30
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(2 * ceil32(return_data.size)) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (4 * ceil32(return_data.size)) + 256
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 <= test266151307()
                require (2 * ceil32(return_data.size)) + return_data.size + 256 > (2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + 287
                if mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + 256] > test266151307():
                    revert with 'NH{q', 65
                if ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + 256]) + 1 < 0 or (4 * ceil32(return_data.size)) + ceil32(32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + 256]) + 257 > test266151307():
                    revert with 'NH{q', 65
                require mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + (32 * mem[(2 * ceil32(return_data.size)) + mem[(2 * ceil32(return_data.size)) + 256 len 4], Mask(224, 32, cd[164]) >> 32 + 256]) + 32 <= return_data.size
    if uint32(call.func_hash) >> 224 != unknown_0xa9e01880(?????):
        if unknown_0xb98c491a(?????) == uint32(call.func_hash) >> 224:
            require not msg.value
            require calldata.size - 4 >= 64
            require cd[4] == address(cd[4])
            require cd[36] == address(cd[36])
            require ext_code.size(address(cd[36]))
            staticcall address(cd[36]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[4])
        else:
            if uint32(call.func_hash) >> 224 != unknown_0xc13a541d(?????):
                if unknown_0xc9c13eca(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    if not stor1[msg.sender]:
                        require owner == msg.sender
                    call msg.sender with:
                       value eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            require not msg.value
            require calldata.size - 4 >= 32
            require cd[4] == address(cd[4])
            require ext_code.size(address(cd[4]))
            staticcall address(cd[4]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args msg.sender, this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
            return 1
        else:
            return 0
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] == address(cd[68])
    require cd[100] == address(cd[100])
    mem[0] = msg.sender
    mem[32] = 1
    if not stor1[msg.sender]:
        require owner == msg.sender
        mem[132] = msg.sender
        mem[164] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0xdd62ed3e with:
                gas gas_remaining wei
               args msg.sender, this.address
        mem[128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
            revert with 0, 'token1 not approved'
        mem[ceil32(return_data.size) + 132] = msg.sender
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = cd[132]
        require ext_code.size(address(cd[36]))
        call address(cd[36]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, cd[132]
        mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'transfer of token1 to contract failed'
        mem[(2 * ceil32(return_data.size)) + 132] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < cd[132]:
            revert with 0, 'Not enough balance for testing!'
        if address(cd[36]) == address(cd[68]):
            mem[(4 * ceil32(return_data.size)) + 160] = address(cd[36])
            mem[(4 * ceil32(return_data.size)) + 192] = address(cd[100])
            mem[(4 * ceil32(return_data.size)) + 224] = 2
            mem[(4 * ceil32(return_data.size)) + 256] = address(cd[100])
            mem[(4 * ceil32(return_data.size)) + 288] = address(cd[36])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            idx = 0
            s = (4 * ceil32(return_data.size)) + 160
            t = (4 * ceil32(return_data.size)) + 548
            while idx < 2:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 320] = 260
            mem[(4 * ceil32(return_data.size)) + 612 len 288] = 0, cd[132], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(4 * ceil32(return_data.size)) + 548 len 92]
            mem[(4 * ceil32(return_data.size)) + 872] = 0
            call address(cd[4]).mem[(4 * ceil32(return_data.size)) + 612 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 616 len 256]
            if not ext_call.success:
                revert with 0, 'Buy failed'
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(cd[100]))
            staticcall address(cd[100]).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(cd[4])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not return_data.size:
                if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if 30 > !block.timestamp:
                        revert with 'NH{q', 17
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 256
                    t = (7 * ceil32(return_data.size)) + 840
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + 904 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(7 * ceil32(return_data.size)) + 840 len 92]
                    call address(cd[4]).mem[(7 * ceil32(return_data.size)) + 904 len 4] with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + 908 len 256]
                else:
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 30 > !block.timestamp:
                        revert with 'NH{q', 17
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 256
                    t = (8 * ceil32(return_data.size)) + 840
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + 904 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(8 * ceil32(return_data.size)) + 840 len 92]
                    call address(cd[4]).mem[(8 * ceil32(return_data.size)) + 904 len 4] with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + 908 len 256]
            else:
                if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if 30 > !block.timestamp:
                        revert with 'NH{q', 17
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 256
                    t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 841
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len 92]
                    call address(cd[4]).mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 4] with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 256]
                else:
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 30 > !block.timestamp:
                        revert with 'NH{q', 17
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 256
                    t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 841
                    while idx < 2:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len 92]
                    call address(cd[4]).mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 4] with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 256]
        else:
            mem[(4 * ceil32(return_data.size)) + 128] = 3
            mem[(4 * ceil32(return_data.size)) + 160] = address(cd[36])
            mem[(4 * ceil32(return_data.size)) + 192] = address(cd[68])
            mem[(4 * ceil32(return_data.size)) + 224] = address(cd[100])
            mem[(4 * ceil32(return_data.size)) + 256] = 3
            mem[(4 * ceil32(return_data.size)) + 288 len 96] = call.data[calldata.size len 96]
            if 0 >= mem[96]:
                revert with 'NH{q', 50
            mem[128] = address(cd[100])
            if 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[160] = address(cd[68])
            if 2 >= mem[96]:
                revert with 'NH{q', 50
            mem[192] = address(cd[36])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            mem[(4 * ceil32(return_data.size)) + 420] = cd[132]
            mem[(4 * ceil32(return_data.size)) + 452] = 1
            mem[(4 * ceil32(return_data.size)) + 484] = 160
            mem[(4 * ceil32(return_data.size)) + 580] = 3
            idx = 0
            s = (4 * ceil32(return_data.size)) + 288
            t = (4 * ceil32(return_data.size)) + 612
            while idx < 3:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 516] = this.address
            mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp + 30
            mem[(4 * ceil32(return_data.size)) + 384] = 292
            mem[(4 * ceil32(return_data.size)) + 416 len 4] = swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
            mem[(4 * ceil32(return_data.size)) + 708 len 320] = 0, cd[132], 1, 160, address(this.address), block.timestamp + 30, 3, mem[(4 * ceil32(return_data.size)) + 612 len 124]
            mem[(4 * ceil32(return_data.size)) + 1000] = 0
            call address(cd[4]).mem[(4 * ceil32(return_data.size)) + 708 len 4] with:
                 gas gas_remaining wei
                args mem[(4 * ceil32(return_data.size)) + 712 len 288]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'Buy failed'
                mem[(4 * ceil32(return_data.size)) + 712] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + 712] = this.address
                mem[(6 * ceil32(return_data.size)) + 744] = address(cd[4])
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[4])
                mem[(6 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if 30 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + 744] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + 776] = 1
                    mem[(7 * ceil32(return_data.size)) + 808] = 160
                    mem[(7 * ceil32(return_data.size)) + 904] = mem[96]
                    idx = 0
                    s = 128
                    t = (7 * ceil32(return_data.size)) + 936
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + (32 * mem[96]) + 936 len floor32((32 * mem[96]) + 227)] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, mem[(7 * ceil32(return_data.size)) + 904 len floor32((32 * mem[96]) + 227) - 164]
                    if floor32((32 * mem[96]) + 227) > (32 * mem[96]) + 196:
                        mem[(7 * ceil32(return_data.size)) + (64 * mem[96]) + 1132] = 0
                    call address(cd[4]).mem[(7 * ceil32(return_data.size)) + (32 * mem[96]) + 936 len 4] with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + (32 * mem[96]) + 940 len (32 * mem[96]) + 192]
                else:
                    mem[(7 * ceil32(return_data.size)) + 712] = address(cd[4])
                    mem[(7 * ceil32(return_data.size)) + 744] = -1
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    mem[(7 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 30 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + 744] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + 776] = 1
                    mem[(8 * ceil32(return_data.size)) + 808] = 160
                    mem[(8 * ceil32(return_data.size)) + 904] = mem[96]
                    idx = 0
                    s = 128
                    t = (8 * ceil32(return_data.size)) + 936
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + (32 * mem[96]) + 936 len floor32((32 * mem[96]) + 227)] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, mem[(8 * ceil32(return_data.size)) + 904 len floor32((32 * mem[96]) + 227) - 164]
                    if floor32((32 * mem[96]) + 227) > (32 * mem[96]) + 196:
                        mem[(8 * ceil32(return_data.size)) + (64 * mem[96]) + 1132] = 0
                    call address(cd[4]).mem[(8 * ceil32(return_data.size)) + (32 * mem[96]) + 936 len 4] with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + (32 * mem[96]) + 940 len (32 * mem[96]) + 192]
            else:
                mem[(4 * ceil32(return_data.size)) + 708] = return_data.size
                mem[(4 * ceil32(return_data.size)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'Buy failed'
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = this.address
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = this.address
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = address(cd[4])
                require ext_code.size(address(cd[100]))
                staticcall address(cd[100]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(cd[4])
                mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                    if 30 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = ext_call.return_data[0]
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = 1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = 160
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = mem[96]
                    idx = 0
                    s = 128
                    t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 937
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 937 len floor32((32 * mem[96]) + 227)] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len floor32((32 * mem[96]) + 227) - 164]
                    if floor32((32 * mem[96]) + 227) > (32 * mem[96]) + 196:
                        mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + (64 * mem[96]) + 1133] = 0
                    call address(cd[4]).mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 937 len 4] with:
                         gas gas_remaining wei
                        args mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 941 len (32 * mem[96]) + 192]
                else:
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = address(cd[4])
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = -1
                    require ext_code.size(address(cd[100]))
                    call address(cd[100]).approve(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(cd[4]), -1
                    mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    if 30 > !block.timestamp:
                        revert with 'NH{q', 17
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = ext_call.return_data[0]
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = 1
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = 160
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = mem[96]
                    idx = 0
                    s = 128
                    t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 937
                    while idx < mem[96]:
                        mem[t] = mem[s + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 937 len floor32((32 * mem[96]) + 227)] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len floor32((32 * mem[96]) + 227) - 164]
                    if floor32((32 * mem[96]) + 227) > (32 * mem[96]) + 196:
                        mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + (64 * mem[96]) + 1133] = 0
                    call address(cd[4]).mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 937 len 4] with:
                         gas gas_remaining wei
                        args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 941 len (32 * mem[96]) + 192]
        if not ext_call.success:
            revert with 0, 'Sell failed'
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
            revert with 'NH{q', 17
        if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * cd[132] > cd[132]:
            revert with 0, 'Less than 50% tax'
        revert with 0, 'More than 50% tax'
    mem[132] = msg.sender
    mem[164] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    mem[128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
        revert with 0, 'token1 not approved'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = this.address
    mem[ceil32(return_data.size) + 196] = cd[132]
    require ext_code.size(address(cd[36]))
    call address(cd[36]).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, cd[132]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'transfer of token1 to contract failed'
    mem[(2 * ceil32(return_data.size)) + 132] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(2 * ceil32(return_data.size)) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < cd[132]:
        revert with 0, 'Not enough balance for testing!'
    if address(cd[36]) == address(cd[68]):
        mem[(4 * ceil32(return_data.size)) + 160] = address(cd[36])
        mem[(4 * ceil32(return_data.size)) + 192] = address(cd[100])
        mem[(4 * ceil32(return_data.size)) + 224] = 2
        mem[(4 * ceil32(return_data.size)) + 256] = address(cd[100])
        mem[(4 * ceil32(return_data.size)) + 288] = address(cd[36])
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        idx = 0
        s = (4 * ceil32(return_data.size)) + 160
        t = (4 * ceil32(return_data.size)) + 548
        while idx < 2:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 320] = 260
        mem[(4 * ceil32(return_data.size)) + 612 len 288] = 0, cd[132], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(4 * ceil32(return_data.size)) + 548 len 92]
        mem[(4 * ceil32(return_data.size)) + 872] = 0
        call address(cd[4]).mem[(4 * ceil32(return_data.size)) + 612 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 616 len 256]
        if not ext_call.success:
            revert with 0, 'Buy failed'
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not return_data.size:
            if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = (7 * ceil32(return_data.size)) + 840
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + 904 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(7 * ceil32(return_data.size)) + 840 len 92]
                call address(cd[4]).mem[(7 * ceil32(return_data.size)) + 904 len 4] with:
                     gas gas_remaining wei
                    args mem[(7 * ceil32(return_data.size)) + 908 len 256]
            else:
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = (8 * ceil32(return_data.size)) + 840
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + 904 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(8 * ceil32(return_data.size)) + 840 len 92]
                call address(cd[4]).mem[(8 * ceil32(return_data.size)) + 904 len 4] with:
                     gas gas_remaining wei
                    args mem[(8 * ceil32(return_data.size)) + 908 len 256]
        else:
            if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 841
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len 92]
                call address(cd[4]).mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 4] with:
                     gas gas_remaining wei
                    args mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 256]
            else:
                require ext_code.size(address(cd[100]))
                call address(cd[100]).approve(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[4]), -1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if 30 > !block.timestamp:
                    revert with 'NH{q', 17
                idx = 0
                s = (4 * ceil32(return_data.size)) + 256
                t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 841
                while idx < 2:
                    mem[t] = mem[s + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 288] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, 2, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 841 len 92]
                call address(cd[4]).mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 4] with:
                     gas gas_remaining wei
                    args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 909 len 256]
        if not ext_call.success:
            revert with 0, 'Sell failed'
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
            revert with 'NH{q', 17
        if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * cd[132] > cd[132]:
            revert with 0, 'Less than 50% tax'
        revert with 0, 'More than 50% tax'
    mem[(4 * ceil32(return_data.size)) + 128] = 3
    mem[(4 * ceil32(return_data.size)) + 160] = address(cd[36])
    mem[(4 * ceil32(return_data.size)) + 192] = address(cd[68])
    mem[(4 * ceil32(return_data.size)) + 224] = address(cd[100])
    mem[(4 * ceil32(return_data.size)) + 256] = 3
    mem[(4 * ceil32(return_data.size)) + 288 len 96] = call.data[calldata.size len 96]
    if 0 >= mem[96]:
        revert with 'NH{q', 50
    mem[128] = address(cd[100])
    if 1 >= mem[96]:
        revert with 'NH{q', 50
    mem[160] = address(cd[68])
    if 2 >= mem[96]:
        revert with 'NH{q', 50
    mem[192] = address(cd[36])
    if 30 > !block.timestamp:
        revert with 'NH{q', 17
    mem[(4 * ceil32(return_data.size)) + 420] = cd[132]
    mem[(4 * ceil32(return_data.size)) + 452] = 1
    mem[(4 * ceil32(return_data.size)) + 484] = 160
    mem[(4 * ceil32(return_data.size)) + 580] = 3
    idx = 0
    s = (4 * ceil32(return_data.size)) + 288
    t = (4 * ceil32(return_data.size)) + 612
    while idx < 3:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 516] = this.address
    mem[(4 * ceil32(return_data.size)) + 548] = block.timestamp + 30
    mem[(4 * ceil32(return_data.size)) + 384] = 292
    mem[(4 * ceil32(return_data.size)) + 416 len 4] = swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
    mem[(4 * ceil32(return_data.size)) + 708 len 320] = 0, cd[132], 1, 160, address(this.address), block.timestamp + 30, 3, mem[(4 * ceil32(return_data.size)) + 612 len 124]
    mem[(4 * ceil32(return_data.size)) + 1000] = 0
    call address(cd[4]).mem[(4 * ceil32(return_data.size)) + 708 len 4] with:
         gas gas_remaining wei
        args mem[(4 * ceil32(return_data.size)) + 712 len 288]
    if return_data.size:
        mem[(4 * ceil32(return_data.size)) + 708] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 740 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            revert with 0, 'Buy failed'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = this.address
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = this.address
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = address(cd[4])
        require ext_code.size(address(cd[100]))
        staticcall address(cd[100]).0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(cd[4])
        mem[(6 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= 0x8000000000000000000000000000000000000000000000000000000000000000:
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = ext_call.return_data[0]
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = 1
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = 160
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = mem[96]
            idx = 0
            s = 128
            t = (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 937
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 937 len floor32((32 * mem[96]) + 227)] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len floor32((32 * mem[96]) + 227) - 164]
            if floor32((32 * mem[96]) + 227) > (32 * mem[96]) + 196:
                mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + (64 * mem[96]) + 1133] = 0
            call address(cd[4]).mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 937 len 4] with:
                 gas gas_remaining wei
                args mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 941 len (32 * mem[96]) + 192]
        else:
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 713] = address(cd[4])
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = -1
            require ext_code.size(address(cd[100]))
            call address(cd[100]).approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(cd[4]), -1
            mem[(7 * ceil32(return_data.size)) + ceil32(return_data.size) + 709] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if 30 > !block.timestamp:
                revert with 'NH{q', 17
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 745] = ext_call.return_data[0]
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = 1
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = 160
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = mem[96]
            idx = 0
            s = 128
            t = (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 937
            while idx < mem[96]:
                mem[t] = mem[s + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 937 len floor32((32 * mem[96]) + 227)] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len floor32((32 * mem[96]) + 227) - 164]
            if floor32((32 * mem[96]) + 227) > (32 * mem[96]) + 196:
                mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + (64 * mem[96]) + 1133] = 0
            call address(cd[4]).mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 937 len 4] with:
                 gas gas_remaining wei
                args mem[(8 * ceil32(return_data.size)) + ceil32(return_data.size) + (32 * mem[96]) + 941 len (32 * mem[96]) + 192]
        if not ext_call.success:
            revert with 0, 'Sell failed'
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
            revert with 'NH{q', 17
        if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * cd[132] > cd[132]:
            revert with 0, 'Less than 50% tax'
        revert with 0, 'More than 50% tax'
    if not ext_call.success:
        revert with 0, 'Buy failed'
    mem[(4 * ceil32(return_data.size)) + 712] = this.address
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(4 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(6 * ceil32(return_data.size)) + 712] = this.address
    mem[(6 * ceil32(return_data.size)) + 744] = address(cd[4])
    require ext_code.size(address(cd[100]))
    staticcall address(cd[100]).0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(cd[4])
    mem[(6 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (7 * ceil32(return_data.size)) + 708
    require return_data.size >= 32
    if ext_call.return_data[0] < 0x8000000000000000000000000000000000000000000000000000000000000000:
        mem[(7 * ceil32(return_data.size)) + 712] = address(cd[4])
        mem[(7 * ceil32(return_data.size)) + 744] = -1
        require ext_code.size(address(cd[100]))
        call address(cd[100]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), -1
        mem[(7 * ceil32(return_data.size)) + 708] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if 30 > !block.timestamp:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + 744] = ext_call.return_data[0]
        mem[(8 * ceil32(return_data.size)) + 776] = 1
        mem[(8 * ceil32(return_data.size)) + 808] = 160
        mem[(8 * ceil32(return_data.size)) + 904] = mem[96]
        idx = 0
        s = 128
        t = (8 * ceil32(return_data.size)) + 936
        while idx < mem[96]:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(8 * ceil32(return_data.size)) + (32 * mem[96]) + 936 len floor32((32 * mem[96]) + 227)] = 0, ext_call.return_data[0], 1, 160, address(this.address), block.timestamp + 30, mem[(8 * ceil32(return_data.size)) + 904 len floor32((32 * mem[96]) + 227) - 164]
        if floor32((32 * mem[96]) + 227) > (32 * mem[96]) + 196:
            mem[(8 * ceil32(return_data.size)) + (64 * mem[96]) + 1132] = 0
        call address(cd[4]).mem[(8 * ceil32(return_data.size)) + (32 * mem[96]) + 936 len 4] with:
             gas gas_remaining wei
            args mem[(8 * ceil32(return_data.size)) + (32 * mem[96]) + 940 len (32 * mem[96]) + 192]
        if not ext_call.success:
            revert with 0, 'Sell failed'
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
            revert with 'NH{q', 17
        if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        if 2 * cd[132] > cd[132]:
            revert with 0, 'Less than 50% tax'
        revert with 0, 'More than 50% tax'
    if 30 > !block.timestamp:
        revert with 'NH{q', 17
    mem[(7 * ceil32(return_data.size)) + 744] = ext_call.return_data[0]
    mem[(7 * ceil32(return_data.size)) + 776] = 1
    mem[(7 * ceil32(return_data.size)) + 808] = 160
    _6496 = mem[96]
    mem[(7 * ceil32(return_data.size)) + 904] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 228
    while idx < _6496:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(7 * ceil32(return_data.size)) + 840] = this.address
    mem[(7 * ceil32(return_data.size)) + 872] = block.timestamp + 30
    _8452 = mem[64]
    mem[mem[64]] = (7 * ceil32(return_data.size)) + (32 * _6496) + -mem[64] + 904
    mem[64] = (7 * ceil32(return_data.size)) + (32 * _6496) + 936
    mem[_8452 + 32 len 4] = swapExactTokensForTokensSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5)
    _8548 = mem[_8452]
    mem[(7 * ceil32(return_data.size)) + (32 * _6496) + 936 len ceil32(mem[_8452])] = mem[_8452 + 32 len ceil32(mem[_8452])]
    if ceil32(_8548) > _8548:
        mem[(7 * ceil32(return_data.size)) + (32 * _6496) + _8548 + 936] = 0
    call address(cd[4]).mem[(7 * ceil32(return_data.size)) + (32 * _6496) + 936 len 4] with:
         gas gas_remaining wei
        args mem[(7 * ceil32(return_data.size)) + (32 * _6496) + 940 len _8548 - 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'Sell failed'
        mem[(7 * ceil32(return_data.size)) + (32 * _6496) + 940] = this.address
        require ext_code.size(address(cd[36]))
        staticcall address(cd[36]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(7 * ceil32(return_data.size)) + (32 * _6496) + 936] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
            revert with 'NH{q', 17
        if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        mem[(8 * ceil32(return_data.size)) + (32 * _6496) + 936] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + (32 * _6496) + 940] = 32
        mem[(8 * ceil32(return_data.size)) + (32 * _6496) + 972] = 17
        if 2 * cd[132] <= cd[132]:
            mem[(8 * ceil32(return_data.size)) + (32 * _6496) + 1004] = 'More than 50% tax'
        else:
            mem[(8 * ceil32(return_data.size)) + (32 * _6496) + 1004] = 'Less than 50% tax'
        revert with memory
          from (8 * ceil32(return_data.size)) + (32 * _6496) + 936
           len ceil32(return_data.size) + 100
    mem[(7 * ceil32(return_data.size)) + (32 * _6496) + 968 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        revert with 0, 'Sell failed'
    mem[(7 * ceil32(return_data.size)) + (32 * _6496) + ceil32(return_data.size) + 941] = this.address
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[(7 * ceil32(return_data.size)) + (32 * _6496) + ceil32(return_data.size) + 937] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0] - cd[132]:
        revert with 'NH{q', 17
    if cd[132] > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
        revert with 'NH{q', 17
    mem[(8 * ceil32(return_data.size)) + (32 * _6496) + ceil32(return_data.size) + 937] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + (32 * _6496) + ceil32(return_data.size) + 941] = 32
    mem[(8 * ceil32(return_data.size)) + (32 * _6496) + ceil32(return_data.size) + 973] = 17
    if 2 * cd[132] <= cd[132]:
        mem[(8 * ceil32(return_data.size)) + (32 * _6496) + ceil32(return_data.size) + 1005] = 'More than 50% tax'
    else:
        mem[(8 * ceil32(return_data.size)) + (32 * _6496) + ceil32(return_data.size) + 1005] = 'Less than 50% tax'
    revert with memory
      from (8 * ceil32(return_data.size)) + (32 * _6496) + ceil32(return_data.size) + 937
       len ceil32(return_data.size) + 100
}



}
