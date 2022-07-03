contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct stor1;

function sub_c72f7c38(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor0[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function addUser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor0[msg.sender][address(arg1)]:
        stor0[msg.sender][address(arg1)] = 1
        stor1[msg.sender].field_0++
        stor1[msg.sender][stor1[msg.sender].field_0].field_0 = arg1
}

function users(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[64] = (32 * stor1[address(arg1)].field_0) + 128
    mem[96] = stor1[address(arg1)].field_0
    if not stor1[address(arg1)].field_0:
        mem[(32 * stor1[address(arg1)].field_0) + 128] = 32
        mem[(32 * stor1[address(arg1)].field_0) + 160] = stor1[address(arg1)].field_0
        idx = 0
        s = (32 * stor1[address(arg1)].field_0) + 192
        t = 128
        while idx < stor1[address(arg1)].field_0:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor1[address(arg1)].field_0) + 128
           len (96 * stor1[address(arg1)].field_0) + 64
    mem[128] = stor1[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * stor1[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = stor1[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor1[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor1[address(arg1)].field_0) + 160] = stor1[address(arg1)].field_0
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor1[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor1[address(arg1)].field_0) + -mem[64] + 192
}

function sub_3654cc7d(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    require ('cd', 36).length <= test266151307()
    require (32 * ('cd', 36).length) + 128 >= 96 and (32 * ('cd', 36).length) + 128 <= test266151307()
    mem[64] = (32 * ('cd', 36).length) + 128
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < ('cd', 36).length:
        require idx < mem[96]
        _26 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).balanceOf(address arg1) with:
                gas gas_remaining wei
               args address(_26)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _29 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_29] > 0:
            mem[mem[64] + 4] = address(_26)
            require ext_code.size(address(cd[4]))
            call address(cd[4]).user_checkpoint(address arg1) with:
                 gas gas_remaining wei
                args address(_26)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_33] == bool(mem[_33])
        idx = idx + 1
        s = _26
        continue 
}



}
