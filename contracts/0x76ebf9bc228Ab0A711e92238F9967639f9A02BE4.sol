contract main {




// =====================  Runtime code  =====================


address stor0;
uint8 stor1; offset 160
address stor1;
uint256 stor2; offset 32
uint256 stor2;
uint256 stor3;
uint8 stor4;
mapping of uint8 stor5;

function _fallback() payable {
    if stor0 != msg.sender:
        revert with 0, 'e1'
}

function details() {
    return address(stor1.field_0), stor3, uint256(stor2.field_0), bool(uint8(stor1.field_160))
}

function withdrawAll() {
    if stor0 != msg.sender:
        revert with 0, 'e1'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'e1'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_984180ab(?) {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg4 == bool(arg4)
    if stor0 != msg.sender:
        revert with 0, 'e1'
    if arg2 <= 0:
        revert with 0, 'e10'
    stor3 = arg2
    uint256(stor2.field_0) = arg3
    stor4 = uint8(bool(arg4))
    address(stor1.field_0) = address(arg1)
    uint8(stor1.field_160) = 1
}

function withdrawToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, 'e1'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor0, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function setWallets(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'e1'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        stor5[mem[(32 * idx) + 140 len 20]] = 1
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_a3a00072(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor0 != msg.sender:
        revert with 0, 'e1'
    idx = 0
    s = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if eth.balance(mem[(32 * idx) + 128]) >= cd[36]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if idx >= ('cd', 4).length:
            revert with 0, 50
        if cd[36] < eth.balance(mem[(32 * idx) + 128]):
            revert with 0, 17
        if idx >= ('cd', 4).length:
            revert with 0, 50
        call mem[(32 * idx) + 140 len 20] with:
           value cd[36] - eth.balance(mem[(32 * idx) + 128]) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if s > !(cd[36] - eth.balance(mem[(32 * idx) + 128])):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + cd[36] - eth.balance(mem[(32 * idx) + 128])
        continue 
    if s < msg.value:
        if msg.value < s:
            revert with 0, 17
        call msg.sender with:
           value msg.value - s wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function buy(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor4:
        revert with 0, 'e111'
    if not uint8(stor1.field_160):
        revert with 0, 'e2'
    mem[0] = msg.sender
    mem[32] = 5
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'e10'
    if 120 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(32 * arg1.length) + 97] = 0x7ff36ab500000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg1.length) + 101] = uint256(stor2.field_0)
    mem[ceil32(32 * arg1.length) + 133] = 128
    mem[ceil32(32 * arg1.length) + 229] = arg1.length
    idx = 0
    s = ceil32(32 * arg1.length) + 261
    t = 128
    while idx < arg1.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * arg1.length) + 165] = stor0
    mem[ceil32(32 * arg1.length) + 197] = block.timestamp + 120
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).swapExactETHForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value stor3 wei
         gas gas_remaining wei
        args uint256(stor2.field_0), Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + 261 len 32 * arg1.length]), stor0, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * arg1.length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * arg1.length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require mem[ceil32(32 * arg1.length) + 97 len 4], Mask(224, 0, stor2.field_32) <= test266151307()
    require ceil32(32 * arg1.length) + return_data.size + 97 > ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], Mask(224, 0, stor2.field_32) + 128
    if mem[ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], Mask(224, 0, stor2.field_32) + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], Mask(224, 0, stor2.field_32) + 97]) + 1 < 0 or ceil32(32 * arg1.length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], Mask(224, 0, stor2.field_32) + 97]) + 98 > test266151307():
        revert with 0, 65
    require mem[ceil32(32 * arg1.length) + 97 len 4], Mask(224, 0, stor2.field_32) + (32 * mem[ceil32(32 * arg1.length) + mem[ceil32(32 * arg1.length) + 97 len 4], Mask(224, 0, stor2.field_32) + 97]) + 32 <= return_data.size
    uint8(stor1.field_160) = 0
}

function sub_f65be72f(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not stor4:
        revert with 0, 'e111'
    if not uint8(stor1.field_160):
        revert with 0, 'e2'
    mem[0] = msg.sender
    mem[32] = 5
    if bool(stor5[msg.sender]) != 1:
        revert with 0, 'e10'
    if 120 > !block.timestamp:
        revert with 0, 17
    mem[ceil32(32 * ('cd', 4).length) + 97] = 0xa2a1623d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + 101] = uint256(stor2.field_0)
    mem[ceil32(32 * ('cd', 4).length) + 133] = 128
    mem[ceil32(32 * ('cd', 4).length) + 229] = ('cd', 4).length
    idx = 0
    s = ceil32(32 * ('cd', 4).length) + 261
    t = 128
    while idx < ('cd', 4).length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * ('cd', 4).length) + 165] = stor0
    mem[ceil32(32 * ('cd', 4).length) + 197] = block.timestamp + 120
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).swapExactAVAXForTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value stor3 wei
         gas gas_remaining wei
        args uint256(stor2.field_0), Array(len=('cd', 4).length, data=mem[ceil32(32 * ('cd', 4).length) + 261 len 32 * ('cd', 4).length]), stor0, block.timestamp + 120
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 4).length) + 97 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 0, stor2.field_32) <= test266151307()
    require ceil32(32 * ('cd', 4).length) + return_data.size + 97 > ceil32(32 * ('cd', 4).length) + mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 0, stor2.field_32) + 128
    if mem[ceil32(32 * ('cd', 4).length) + mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 0, stor2.field_32) + 97] > test266151307():
        revert with 0, 65
    if ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 0, stor2.field_32) + 97]) + 1 < 0 or ceil32(32 * ('cd', 4).length) + ceil32(return_data.size) + ceil32(32 * mem[ceil32(32 * ('cd', 4).length) + mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 0, stor2.field_32) + 97]) + 98 > test266151307():
        revert with 0, 65
    require mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 0, stor2.field_32) + (32 * mem[ceil32(32 * ('cd', 4).length) + mem[ceil32(32 * ('cd', 4).length) + 97 len 4], Mask(224, 0, stor2.field_32) + 97]) + 32 <= return_data.size
    uint8(stor1.field_160) = 0
}



}
