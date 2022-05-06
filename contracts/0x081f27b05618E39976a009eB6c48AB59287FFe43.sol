contract main {




// =====================  Runtime code  =====================


#
#  - sub_a20e5faf(?)
#
function _fallback() payable {
    revert
}

function getState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[192] = 0
    staticcall arg1.getA() with:
            gas gas_remaining wei
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = ext_call.return_data[0]
    mem[160] = 4 * 10^6
    mem[ceil32(return_data.size) + 224] = 3
    mem[64] = ceil32(return_data.size) + 352
    mem[ceil32(return_data.size) + 256 len 96] = call.data[calldata.size len 96]
    mem[128] = ceil32(return_data.size) + 224
    idx = 0
    while idx < 3:
        mem[mem[64] + 4] = uint8(idx)
        staticcall arg1.getTokenBalance(uint8 arg1) with:
                gas gas_remaining wei
               args (idx << 248)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if idx >= mem[mem[128]]:
            revert with 0, 50
        mem[(32 * idx) + mem[128] + 32] = mem[_16]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[192] = block.number
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64] = 128
    _19 = mem[mem[128]]
    mem[mem[64] + 160] = mem[mem[128]]
    mem[mem[64] + 192 len 32 * _19] = mem[mem[128] + 32 len 32 * _19]
    mem[mem[64] + 96] = mem[160]
    return 32, mem[96], 128, mem[160], block.number, mem[mem[64] + 160 len (32 * _19) + 32]
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if ('cd', 100).length != 2:
        revert with 0, 'StableSwapAdaptor: PathError'
    if 0 >= ('cd', 100).length:
        revert with 0, 50
    require ('cd', 100)[0] == address(('cd', 100)[0])
    mem[96] = 0x130966628846bfd36ff31a822705796e8cb8c18d
    mem[128] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
    mem[160] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
    idx = 0
    while idx < 3:
        if address(('cd', 100)[0]) != mem[(32 * idx) + 108 len 20]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if 1 >= ('cd', 100).length:
            revert with 0, 50
        require ('cd', 100)[1] == address(('cd', 100)[1])
        mem[192] = 0x130966628846bfd36ff31a822705796e8cb8c18d
        mem[224] = 0xa7d7079b0fead91f3e65f86e8915cb59c1a4c664
        mem[256] = 0xd586e7f844cea2f87f50152665bcbc2c279d8d70
        s = 0
        while s < 3:
            if address(('cd', 100)[1]) != mem[(32 * s) + 204 len 20]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                continue 
            staticcall address(cd[36]).calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) with:
                    gas gas_remaining wei
                   args idx << 248, s << 248, cd[4]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return ext_call.return_data[0]
        revert with 0, 'StableSwapAdaptor: TokenError'
    revert with 0, 'StableSwapAdaptor: TokenError'
}



}
