contract main {




// =====================  Runtime code  =====================


#
#  - executeOrder(uint256 arg1)
#  - withdrawToken(address arg1, uint256 arg2)
#
address stor0;
array of struct stor1;
array of struct stor2;
array of struct stor3;
uint256 sub_8158900b;

function sub_8158900b(?) {
    return sub_8158900b
}

function kill() {
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '404. Please contact support on MSN messenger.'
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '404. Please contact support on MSN messenger.'
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_fb7cc43b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require 0 < stor1[arg1].field_256
    require ext_code.size(stor1[arg1][1].field_0)
    staticcall stor1[arg1][1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args stor1[arg1].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < stor1[arg1].field_768:
        return 0
    return 1
}

function getAllIDs() {
    if stor3.length:
        mem[128] = uint256(stor3.field_0)
        idx = 128
        s = 0
        while (32 * stor3.length) + 96 > idx:
            mem[idx + 32] = stor3[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor3.length, data=mem[128 len 32 * stor3.length])
    mem[(32 * stor3.length) + 128] = 32
    mem[(32 * stor3.length) + 160] = stor3.length
    mem[(32 * stor3.length) + 192 len 32 * stor3.length] = mem[128 len 32 * stor3.length]
    return memory
      from (32 * stor3.length) + 128
       len (96 * stor3.length) + 64
}

function cancelOrder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    s = 0
    while idx < stor2[address(msg.sender)].field_0:
        require idx < stor2[address(msg.sender)].field_0
        mem[0] = msg.sender
        mem[32] = 2
        if arg1 != stor2[address(msg.sender)][idx].field_0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if stor1[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only user can delete its own orders'
    stor1[arg1].field_1024 = 2
    stor1[arg1].field_1032 = 0
}

function sub_bfd7a8cd(?) {
    if stor2[address(msg.sender)].field_0:
        mem[128] = stor2[address(msg.sender)].field_0
        idx = 128
        s = 0
        while (32 * stor2[address(msg.sender)].field_0) + 96 > idx:
            mem[idx + 32] = stor2[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor2[address(msg.sender)].field_0, data=mem[128 len 32 * stor2[address(msg.sender)].field_0])
    mem[(32 * stor2[address(msg.sender)].field_0) + 128] = 32
    mem[(32 * stor2[address(msg.sender)].field_0) + 160] = stor2[address(msg.sender)].field_0
    mem[(32 * stor2[address(msg.sender)].field_0) + 192 len 32 * stor2[address(msg.sender)].field_0] = mem[128 len 32 * stor2[address(msg.sender)].field_0]
    return memory
      from (32 * stor2[address(msg.sender)].field_0) + 128
       len (96 * stor2[address(msg.sender)].field_0) + 64
}

function getOrderInfo(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1[arg1].field_256:
        mem[128] = stor1[arg1][1].field_0
        idx = 128
        s = 0
        while (32 * stor1[arg1].field_256) + 96 > idx:
            mem[idx + 32] = stor1[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor1[arg1].field_256) + 128] = stor1[arg1].field_1024
    mem[(32 * stor1[arg1].field_256) + 160] = stor1[arg1].field_1088
    mem[(32 * stor1[arg1].field_256) + 192] = 192
    mem[(32 * stor1[arg1].field_256) + 320] = stor1[arg1].field_256
    idx = 0
    s = 128
    t = (32 * stor1[arg1].field_256) + 352
    while idx < stor1[arg1].field_256:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor1[arg1].field_256) + 224] = stor1[arg1].field_512
    mem[(32 * stor1[arg1].field_256) + 256] = stor1[arg1].field_768
    mem[(32 * stor1[arg1].field_256) + 288] = stor1[arg1].field_1056
    return memory
      from (32 * stor1[arg1].field_256) + 128
       len (96 * stor1[arg1].field_256) + 224
}

function sub_008ed859(?) {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == cd[36]
    require cd[68] == cd[68]
    require cd[100] == uint32(cd[100])
    require cd[132] == uint32(cd[132])
    sub_8158900b++
    stor1[stor4].field_0 = msg.sender
    stor1[stor4].field_256 = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while stor1[stor4].field_256 > idx:
            stor1[stor4][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            stor1[stor4][s + 1].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while stor1[stor4].field_256 > idx:
            stor1[stor4][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor1[stor4].field_512 = cd[36]
    stor1[stor4].field_768 = cd[68]
    stor1[stor4].field_1056 = uint32(cd[132])
    stor1[stor4].field_1024 = 0
    stor1[stor4].field_1088 = uint32(cd[100])
    stor2[address(msg.sender)].field_0++
    stor2[address(msg.sender)][stor2[address(msg.sender)].field_0].field_0 = sub_8158900b
    return sub_8158900b
}

function sub_56231150(?) {
    require calldata.size - 4 >= 160
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] == cd[68]
    require cd[100] == cd[100]
    require cd[132] == uint32(cd[132])
    if stor1[cd[4]].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only user can edit its own orders'
    if stor1[cd[4]].field_1024:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    ' order is inactive/triggered , please create a new one'
    stor1[cd[4]].field_256 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor1[cd[4]].field_256 > idx:
            stor1[cd[4]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor1[cd[4]][s + 1].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor1[cd[4]].field_256 > idx:
            stor1[cd[4]][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor1[cd[4]].field_512 = cd[68]
    stor1[cd[4]].field_768 = cd[100]
    stor1[cd[4]].field_1056 = uint32(cd[132])
}



}
