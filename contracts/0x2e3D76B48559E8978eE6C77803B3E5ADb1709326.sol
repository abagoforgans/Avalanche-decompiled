contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getState(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[18 len 14]
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[50 len 14]
    return mem[ceil32(return_data.size) + 192 len 64], block.number
}

function sub_9701eaa8(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require ('cd', 100).length - 2 < ('cd', 100).length
    require cd[((32 * ('cd', 100).length - 2) + cd[100] + 36)] == address(cd[((32 * ('cd', 100).length - 2) + cd[100] + 36)])
    require ext_code.size(address(cd[36]))
    staticcall address(cd[36]).getAmountOut(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args cd[4], address(cd[((32 * ('cd', 100).length - 2) + cd[100] + 36)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a20e5faf(?) payable {
    require calldata.size - 4 >= 224
    require cd[68] == address(cd[68])
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] == address(cd[164])
    require cd[196] <= test266151307()
    require cd[196] + 35 < calldata.size
    require ('cd', 196).length <= test266151307()
    require cd[196] + ('cd', 196).length + 36 <= calldata.size
    require ('cd', 132).length - 2 < ('cd', 132).length
    require cd[((32 * ('cd', 132).length - 2) + cd[132] + 36)] == address(cd[((32 * ('cd', 132).length - 2) + cd[132] + 36)])
    require ext_code.size(address(cd[68]))
    staticcall address(cd[68]).getAmountOut(uint256 arg1, address arg2) with:
            gas gas_remaining wei
           args cd[4], address(cd[((32 * ('cd', 132).length - 2) + cd[132] + 36)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 260 len ('cd', 196).length] = call.data[cd[196] + 36 len ('cd', 196).length]
    mem[('cd', 196).length + ceil32(return_data.size) + 260] = 0
    require ext_code.size(address(cd[68]))
    if cd[100] != 1:
        call address(cd[68]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, ext_call.return_data[0], address(cd[164]), 128, ('cd', 196).length, call.data[cd[196] + 36 len ('cd', 196).length], mem[ceil32(return_data.size) + ('cd', 196).length + 260 len ceil32(('cd', 196).length) - ('cd', 196).length]
    else:
        call address(cd[68]).swap(uint256 arg1, uint256 arg2, address arg3, bytes arg4) with:
             gas gas_remaining wei
            args ext_call.return_data[0], 0, address(cd[164]), 128, ('cd', 196).length, call.data[cd[196] + 36 len ('cd', 196).length], mem[ceil32(return_data.size) + ('cd', 196).length + 260 len ceil32(('cd', 196).length) - ('cd', 196).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_6e505263(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
            _43 = mem[64]
            mem[64] = mem[64] + 96
            mem[_43] = 0
            mem[_43 + 32] = 0
            mem[_43 + 64] = block.number
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                    gas gas_remaining wei
            mem[mem[64] len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _51 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 96
            _53 = mem[_51]
            require mem[_51] == mem[_51 + 18 len 14]
            require mem[_51 + 32] == mem[_51 + 50 len 14]
            require mem[_51 + 64] == mem[_51 + 92 len 4]
            mem[_43 + 32] = mem[_51 + 50 len 14]
            mem[_43] = Mask(112, 0, _53)
            require idx < mem[96]
            mem[(32 * idx) + 128] = _43
            idx = idx + 1
            continue 
        _34 = mem[64]
        mem[mem[64]] = 32
        _35 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _35:
            _65 = mem[t]
            mem[s] = mem[mem[t]]
            mem[s + 32] = mem[_65 + 32]
            mem[s + 64] = mem[_65 + 64]
            idx = idx + 1
            s = s + 96
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _34 + (96 * _35) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 224
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[var17001] = (32 * ('cd', 4).length) + 128
    s = var17001
    idx = var17002
    while idx - 1:
        mem[64] = mem[64] + 96
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        _92 = mem[64]
        mem[64] = mem[64] + 96
        mem[_92] = 0
        mem[_92 + 32] = 0
        mem[_92 + 64] = block.number
        require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
        staticcall address(cd[((32 * idx) + cd[4] + 36)]).getReserves() with:
                gas gas_remaining wei
        mem[mem[64] len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _95 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 96
        _96 = mem[_95]
        require mem[_95] == mem[_95 + 18 len 14]
        require mem[_95 + 32] == mem[_95 + 50 len 14]
        require mem[_95 + 64] == mem[_95 + 92 len 4]
        mem[_92 + 32] = mem[_95 + 50 len 14]
        mem[_92] = Mask(112, 0, _96)
        require idx < mem[96]
        mem[(32 * idx) + 128] = _92
        idx = idx + 1
        continue 
    _85 = mem[64]
    mem[mem[64]] = 32
    _86 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _86:
        _100 = mem[t]
        mem[s] = mem[mem[t]]
        mem[s + 32] = mem[_100 + 32]
        mem[s + 64] = mem[_100 + 64]
        idx = idx + 1
        s = s + 96
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _85 + (96 * _86) + -mem[64] + 64
}



}
