contract main {




// =====================  Runtime code  =====================


const DEFAULT_CLIFF = (8760 * 24 * 3600)

const DEFAULT_REVOCABLE = 1

const DEFAULT_DURATION = (35040 * 24 * 3600)


address defaultOwner;
array of struct stor1;
array of struct stor2;

function defaultOwner() payable {
    return defaultOwner
}

function _fallback() payable {
    revert
}

function timelockContracts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2[address(arg1)].field_0:
        mem[128] = stor2[address(arg1)].field_0
        if (32 * stor2[address(arg1)].field_0) + 32 > 64:
            mem[160] = stor2[address(arg1)].field_256
            idx = 160
            s = 1
            while (32 * stor2[address(arg1)].field_0) + 96 > idx:
                mem[idx + 32] = stor2[address(arg1)][s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor2[address(arg1)].field_0) + 128] = 32
    mem[(32 * stor2[address(arg1)].field_0) + 160] = stor2[address(arg1)].field_0
    idx = 0
    s = (32 * stor2[address(arg1)].field_0) + 192
    t = 128
    while idx < stor2[address(arg1)].field_0:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from (32 * stor2[address(arg1)].field_0) + 128
       len (96 * stor2[address(arg1)].field_0) + 64
}

function deployDefaultVestingContract(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    create contract with 0 wei
                    code: code.data[6719 len 3694]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args 0, 0, arg2, 8760 * 24 * 3600, 35040 * 24 * 3600, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args defaultOwner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployedVestingContract(address(create.new_address), arg1, defaultOwner);
    stor1[address(arg1)].field_0++
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = address(create.new_address)
    return address(create.new_address)
}

function deployTimelockContract(address arg1, address arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    create contract with 0 wei
                    code: code.data[3796 len 2923]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address arg1, uint256 arg2, bool arg3) with:
         gas gas_remaining wei
        args address(arg1), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployedTimelockContract(arg3, address(create.new_address), arg1);
    stor2[address(arg1)].field_0++
    stor2[address(arg1)][stor2[address(arg1)].field_0].field_0 = address(create.new_address)
    return address(create.new_address)
}

function deployVestingContract(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg6 == arg6
    create contract with 0 wei
                    code: code.data[6719 len 3694]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args 0, 0, arg3, arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployedVestingContract(address(create.new_address), arg2, arg1);
    stor1[address(arg2)].field_0++
    stor1[address(arg2)][stor1[address(arg2)].field_0].field_0 = address(create.new_address)
    return address(create.new_address)
}

function vestingContracts(address arg1) payable {
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

function sub_31d6793b(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg3 == address(arg3)
    create contract with 0 wei
                    code: code.data[6719 len 3694]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args 0, 0, arg2, 8760 * 24 * 3600, 35040 * 24 * 3600, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args defaultOwner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployedVestingContract(address(create.new_address), address(arg1), defaultOwner);
    stor1[address(arg1)].field_0++
    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = address(create.new_address)
    require ext_code.size(address(arg3))
    call address(arg3).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return address(create.new_address)
}

function sub_6b340166(?) payable {
    require calldata.size - 4 >= 192
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg4 == bool(arg4)
    require arg5 == address(arg5)
    create contract with 0 wei
                    code: code.data[3796 len 2923]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address arg1, uint256 arg2, bool arg3) with:
         gas gas_remaining wei
        args address(arg1), arg3, bool(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args address(arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployedTimelockContract(arg3, address(create.new_address), address(arg1));
    stor2[address(arg1)].field_0++
    stor2[address(arg1)][stor2[address(arg1)].field_0].field_0 = address(create.new_address)
    require ext_code.size(address(arg5))
    call address(arg5).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return address(create.new_address)
}

function sub_edcab8b7(?) payable {
    require calldata.size - 4 >= 256
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg6 == bool(arg6)
    require arg7 == address(arg7)
    create contract with 0 wei
                    code: code.data[6719 len 3694]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
         gas gas_remaining wei
        args 0, 0, arg3, arg4, arg5, bool(arg6)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployedVestingContract(address(create.new_address), address(arg2), address(arg1));
    stor1[address(arg2)].field_0++
    stor1[address(arg2)][stor1[address(arg2)].field_0].field_0 = address(create.new_address)
    require ext_code.size(address(arg7))
    call address(arg7).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(create.new_address), arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return address(create.new_address)
}

function sub_65edc571(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] == address(cd[36])
    require cd[100] == bool(cd[100])
    require cd[132] == address(cd[132])
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[mem[64] len 2923] = code.data[3796 len 2923]
        create contract with 0 wei
                        code: code.data[3796 len 2923]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address arg1, uint256 arg2, bool arg3) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[4] + 36)]), cd[68], bool(cd[100])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xf2fde38b with:
             gas gas_remaining wei
            args address(cd[36])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DeployedTimelockContract(cd[68], address(create.new_address), address(cd[((32 * idx) + cd[4] + 36)]));
        mem[32] = 2
        stor2[address(cd[((32 * idx) + cd[4] + 36)])].field_0++
        mem[0] = sha3(address(cd[((32 * idx) + cd[4] + 36)]), 2)
        stor2[address(cd[((32 * idx) + cd[4] + 36)])][stor2[address(cd[((32 * idx) + cd[4] + 36)])].field_0].field_0 = address(create.new_address)
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(create.new_address)
        mem[mem[64] + 68] = cd[164]
        require ext_code.size(address(cd[132]))
        call address(cd[132]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(create.new_address), cd[164]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function sub_8d1e3ab2(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[164] == bool(cd[164])
    require cd[196] == address(cd[196])
    idx = 0
    while idx < ('cd', 36).length:
        require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
        mem[mem[64] len 3694] = code.data[6719 len 3694]
        create contract with 0 wei
                        code: code.data[6719 len 3694]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        mem[mem[64] + 100] = cd[132]
        mem[mem[64] + 132] = bool(cd[164])
        require ext_code.size(address(create.new_address))
        call address(create.new_address).initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) with:
             gas gas_remaining wei
            args address(cd[((32 * idx) + cd[36] + 36)]), cd[68], cd[100], cd[132], bool(cd[164])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(create.new_address))
        call address(create.new_address).0xf2fde38b with:
             gas gas_remaining wei
            args address(cd[4])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DeployedVestingContract(address(create.new_address), address(cd[((32 * idx) + cd[36] + 36)]), address(cd[4]));
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[36] + 36)])].field_0++
        mem[0] = sha3(address(cd[((32 * idx) + cd[36] + 36)]), 1)
        stor1[address(cd[((32 * idx) + cd[36] + 36)])][stor1[address(cd[((32 * idx) + cd[36] + 36)])].field_0].field_0 = address(create.new_address)
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = address(create.new_address)
        mem[mem[64] + 68] = cd[228]
        require ext_code.size(address(cd[196]))
        call address(cd[196]).0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(create.new_address), cd[228]
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _27 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_27] == bool(mem[_27])
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
