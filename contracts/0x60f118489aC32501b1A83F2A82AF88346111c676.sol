contract main {




// =====================  Runtime code  =====================


address owner;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_d886c34b(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[64] = 32096
    mem[96 len 32000] = call.data[calldata.size len 32000]
    if ('cd', 4).length >= 500:
        revert with 0, 'max router 500'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        require mem[_16] == mem[_16 + 18 len 14]
        _18 = mem[_16 + 32]
        require mem[_16 + 32] == mem[_16 + 50 len 14]
        require mem[_16 + 64] == mem[_16 + 92 len 4]
        require 2 * idx < 1000
        mem[(64 * idx) + 96] = mem[_16 + 18 len 14]
        require (2 * idx) + 1 < 1000
        mem[(32 * (2 * idx) + 1) + 96] = Mask(112, 0, _18)
        idx = idx + 1
        continue 
    mem[mem[64] len 32000] = mem[96 len 32000]
    return memory
      from mem[64]
       len 32000
}

function sub_752c639d(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require cd[4] == cd[4]
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0, 'paths lenght != routers length'
    idx = 0
    s = cd[4]
    while idx < ('cd', 68).length:
        require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
        require idx < ('cd', 36).length
        require cd[(cd[36] + (32 * idx) + 36)] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)] <= test266151307()
        require cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68 <= calldata.size - (32 * cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)])
        mem[mem[64]] = 0xd06ca61f00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = s
        mem[mem[64] + 36] = 64
        mem[mem[64] + 68] = cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]
        s = 0
        t = cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 68
        u = mem[64] + 100
        while s < cd[(cd[36] + cd[(cd[36] + (32 * idx) + 36)] + 36)]:
            require cd[t] == address(cd[t])
            mem[u] = address(cd[t])
            s = s + 1
            t = t + 32
            u = u + 32
            continue 
        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
        staticcall address(cd[((32 * idx) + cd[68] + 36)]).mem[mem[64] len 4] with:
                gas gas_remaining wei
               args mem[mem[64] + 4 len u + -mem[64] - 4]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _28 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _29 = mem[_28]
        require mem[_28] <= test266151307()
        require _28 + mem[_28] + 31 < _28 + return_data.size
        _30 = mem[_28 + mem[_28]]
        if mem[_28 + mem[_28]] <= test266151307():
            if _28 + ceil32(return_data.size) + (32 * mem[_28 + mem[_28]]) + 32 <= test266151307() and (32 * mem[_28 + mem[_28]]) + 32 >= 0:
                mem[64] = _28 + ceil32(return_data.size) + (32 * mem[_28 + mem[_28]]) + 32
                mem[_28 + ceil32(return_data.size)] = _30
                require _29 + (32 * _30) + 32 <= return_data.size
                s = 0
                t = _28 + _29 + 32
                u = _28 + ceil32(return_data.size) + 32
                while s < _30:
                    require mem[t] == mem[t]
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                if _30 - 1 < _30:
                    idx = idx + 1
                    s = mem[(32 * _30 - 1) + _28 + ceil32(return_data.size) + 32]
                    continue 
        revert
    return s
}



}
