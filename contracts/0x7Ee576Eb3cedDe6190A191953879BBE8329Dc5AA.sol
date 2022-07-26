contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function getAddresses() payable {
    return stor2, stor1, stor3
}

function setAddresses(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor1 = arg2
        stor3 = arg3
        stor2 = arg1
    revert with 0, 'O'
}

function sub_49680c83(?) payable {
    require calldata.size - 4 >= 128
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if arg1:
        require ext_code.size(address(arg4))
        call address(arg4).0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), address(arg3), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor0[idx].field_0 != msg.sender:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg1:
            revert with 0, 'OZ'
        idx = 0
        while idx < stor0.length:
            mem[0] = 0
            if stor0[idx].field_0 == arg1:
                revert with 0, 'OA'
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        stor0.length++
        stor0[stor0.length].field_0 = arg1
    revert with 0, 'O'
}

function owner() payable {
    mem[64] = (32 * stor0.length) + 128
    mem[96] = stor0.length
    if not stor0.length:
        mem[(32 * stor0.length) + 128] = 32
        mem[(32 * stor0.length) + 160] = stor0.length
        idx = 0
        s = (32 * stor0.length) + 192
        t = 128
        while idx < stor0.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor0.length) + 128
           len (96 * stor0.length) + 64
    mem[128] = address(stor0.field_0)
    idx = 128
    s = 0
    while (32 * stor0.length) + 96 > idx:
        mem[idx + 32] = stor0[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor0.length) + 128] = 32
    mem[(32 * stor0.length) + 160] = stor0.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor0.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor0.length) + -mem[64] + 192
}

function sub_6c39723b(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[132] == address(cd[132])
    if not cd[68]:
        idx = 0
        while idx < ('cd', 36).length:
            if cd[((32 * idx) + cd[36] + 36)]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(cd[132])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(cd[132]), cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _33 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_33] == bool(mem[_33])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            if idx < cd[100]:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if cd[((32 * idx) + cd[4] + 36)]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(cd[132])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(stor2)
                    call stor2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(cd[132]), cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _53 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_53] == bool(mem[_53])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    else:
        mem[100] = msg.sender
        mem[132] = address(cd[132])
        mem[164] = cd[68]
        require ext_code.size(stor3)
        call stor3.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(cd[132]), cd[68]
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        idx = 0
        while idx < ('cd', 36).length:
            if cd[((32 * idx) + cd[36] + 36)]:
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = address(cd[132])
                mem[mem[64] + 68] = cd[((32 * idx) + cd[36] + 36)]
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(cd[132]), cd[((32 * idx) + cd[36] + 36)]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _34 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_34] == bool(mem[_34])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            if idx < cd[100]:
                if idx >= ('cd', 4).length:
                    revert with 'NH{q', 50
                if cd[((32 * idx) + cd[4] + 36)]:
                    mem[mem[64] + 4] = msg.sender
                    mem[mem[64] + 36] = address(cd[132])
                    mem[mem[64] + 68] = cd[((32 * idx) + cd[4] + 36)]
                    require ext_code.size(stor2)
                    call stor2.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(cd[132]), cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _54 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_54] == bool(mem[_54])
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
    return 1
}



}
