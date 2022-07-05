contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address endpointAddress; offset 8

function sub_06aaa907(?) {
    return bool(stor0)
}

function endpoint() {
    return endpointAddress
}

function _fallback() payable {
    revert
}

function lzReceive(uint16 arg1, bytes arg2, uint64 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require calldata.size >= arg2.length + arg2 + 36
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg2.length) + ceil32(arg4.length) + 160 <= test266151307() and ceil32(arg4.length) + 160 >= 128
    require calldata.size >= arg4.length + arg4 + 36
    mem[ceil32(arg2.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + arg4.length + 160] = 0
    require msg.sender == endpointAddress
    emit 0xe0baaba0: mem[ceil32(arg2.length) + 160]
    stor0 = 1
}

function sub_62da05cb(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if stor0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The first message of LayerZero has already been sent'
    mem[128] = 0x1000000000000000000000000000000000000000000000000000000000000
    mem[130] = cd[4]
    mem[96] = 34
    mem[194] = 'GIN'
    mem[162] = 32
    mem[64] = 226
    require ('cd', 36).length
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == uint16(cd[((32 * idx) + cd[36] + 36)])
        require idx < ('cd', 68).length
        require cd[(cd[68] + (32 * idx) + 36)] < calldata.size + -cd[68] - 67
        require cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
        _17 = mem[64]
        mem[mem[64]] = 0xc580310000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = uint16(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] + 36] = 192
        mem[mem[64] + 196] = cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]
        mem[mem[64] + 228 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]] = call.data[cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 68 len cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]]
        mem[mem[64] + cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)] + 228] = 0
        mem[mem[64] + 68] = ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 224
        _18 = mem[162]
        mem[_17 + ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 228] = mem[162]
        s = 0
        while s < mem[162]:
            mem[s + _17 + ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 260] = mem[s + 194]
            s = s + 32
            continue 
        if ceil32(mem[162]) > mem[162]:
            mem[_17 + ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + mem[162] + 260] = 0
        mem[_17 + 100] = msg.sender
        mem[_17 + 132] = 0
        mem[_17 + 164] = ceil32(_18) + ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 256
        mem[ceil32(_18) + _17 + ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 260] = mem[96]
        s = 0
        while s < mem[96]:
            mem[s + ceil32(_18) + _17 + ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + 292] = mem[s + 128]
            s = s + 32
            continue 
        if ceil32(mem[96]) > mem[96]:
            mem[ceil32(_18) + _17 + ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + mem[96] + 292] = 0
        require ext_code.size(endpointAddress)
        call endpointAddress.mem[mem[64] len 4] with:
           value msg.value / ('cd', 36).length wei
             gas gas_remaining wei
            args mem[mem[64] + 4 len ceil32(mem[96]) + ceil32(_18) + _17 + ceil32(cd[(cd[68] + cd[(cd[68] + (32 * idx) + 36)] + 36)]) + -mem[64] + 288]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
