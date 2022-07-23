contract main {




// =====================  Runtime code  =====================


mapping of address masterContractOf;
array of address sub_8fd43654;

function sub_8fd43654(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg2 < uint256(sub_8fd43654[arg1])
    return address(sub_8fd43654[arg1][arg2])
}

function masterContractOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return masterContractOf[arg1]
}

function sub_fba96be8(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return uint256(sub_8fd43654[address(arg1)])
}

function _fallback() payable {
    revert
}

function permitToken(address arg1, address arg2, address arg3, uint256 arg4, uint256 arg5, uint8 arg6, bytes32 arg7, bytes32 arg8) {
    require calldata.size - 4 >= 256
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    require arg7 == arg7
    require arg8 == arg8
    require ext_code.size(arg1)
    call arg1.permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
         gas gas_remaining wei
        args 0, 0, address(arg3), arg4, arg5, arg6 << 248, arg7, arg8
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deploy(address arg1, bytes arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 == arg3
    if not arg1:
        revert with 0, 'BoringFactory: No masterContract'
    if not arg3:
        create contract with 0 wei
                        code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, arg1) >> 96, 0x5af43d82803e903d91602b57fd5bf3
        masterContractOf[address(create.new_address)] = arg1
        uint256(sub_8fd43654[address(arg1)])++
        address(sub_8fd43654[address(arg1)][uint256(sub_8fd43654[address(arg1)])]) = address(create.new_address)
        require ext_code.size(address(create.new_address))
        call address(create.new_address).init(bytes arg1) with:
           value msg.value wei
             gas gas_remaining wei
            args Array(len=arg2.length, data=arg2[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit LogDeploy(Array(len=arg2.length, data=arg2[all]), arg1, address(create.new_address));
        return address(create.new_address)
    create2 contract with 0 wei
                    salt: sha3(arg2[all])
                    code: 0x3d602d80600a3d3981f3363d3d373d3d3d363d73, Mask(160, 96, arg1) >> 96, 0x5af43d82803e903d91602b57fd5bf3
    masterContractOf[address(create2.new_address)] = arg1
    uint256(sub_8fd43654[address(arg1)])++
    address(sub_8fd43654[address(arg1)][uint256(sub_8fd43654[address(arg1)])]) = address(create2.new_address)
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).init(bytes arg1) with:
       value msg.value wei
         gas gas_remaining wei
        args Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogDeploy(Array(len=arg2.length, data=arg2[all]), arg1, address(create2.new_address));
    return address(create2.new_address)
}

function batch(bytes[] arg1, bool arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    idx = 0
    while idx < arg1.length:
        require cd[(arg1 + (32 * idx) + 36)] < calldata.size + -arg1 - 67
        require cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] <= test266151307()
        require arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 <= calldata.size - cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]
        _48 = mem[64]
        mem[mem[64] len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = call.data[arg1 + cd[(arg1 + (32 * idx) + 36)] + 68 len cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]]
        mem[mem[64] + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)]] = 0
        delegate this.address.mem[mem[64] len 4] with:
             gas gas_remaining wei
            args mem[mem[64] + 4 len _48 + cd[(arg1 + cd[(arg1 + (32 * idx) + 36)] + 36)] + -mem[64] - 4]
        if not return_data.size:
            if delegate.return_code:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if not arg2:
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                continue 
            if mem[96] < 68:
                _54 = mem[64]
                mem[64] = mem[64] + 64
                mem[_54] = 29
                mem[_54 + 32] = 'Transaction reverted silently'
                _58 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 29
                idx = 0
                while idx < 29:
                    mem[_58 + idx + 68] = mem[_54 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_58 + 97] = 0
                revert with memory
                  from mem[64]
                   len _58 + -mem[64] + 100
            _53 = mem[100]
            require mem[100] >= 32
            _57 = mem[132]
            require mem[132] <= test266151307()
            require mem[132] + 163 < mem[100] + 132
            _61 = mem[mem[132] + 132]
            if mem[mem[132] + 132] > test266151307():
                revert with 'NH{q', 65
            _65 = mem[64]
            if mem[64] + ceil32(mem[mem[132] + 132]) + 32 > test266151307() or mem[64] + ceil32(mem[mem[132] + 132]) + 32 < mem[64]:
                revert with 'NH{q', 65
            mem[64] = mem[64] + ceil32(mem[mem[132] + 132]) + 32
            mem[_65] = mem[mem[132] + 132]
            require _57 + _61 + 164 <= _53 + 132
            idx = 0
            while idx < _61:
                mem[_65 + idx + 32] = mem[_57 + idx + 164]
                idx = idx + 32
                continue 
            if ceil32(_61) <= _61:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _107 = mem[_65]
                mem[mem[64] + 36] = mem[_65]
                idx = 0
                while idx < _107:
                    mem[_101 + idx + 68] = mem[_65 + idx + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_107) > _107:
                    mem[_101 + _107 + 68] = 0
                revert with memory
                  from mem[64]
                   len _101 + ceil32(_107) + -mem[64] + 68
            mem[_65 + _61 + 32] = 0
            _105 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _109 = mem[_65]
            mem[mem[64] + 36] = mem[_65]
            idx = 0
            while idx < _109:
                mem[_105 + idx + 68] = mem[_65 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_109) > _109:
                mem[_105 + _109 + 68] = 0
            revert with memory
              from mem[64]
               len _105 + ceil32(_109) + -mem[64] + 68
        _50 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size) + 1
        mem[_50] = return_data.size
        mem[_50 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if delegate.return_code:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if not arg2:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if return_data.size < 68:
            _56 = mem[64]
            mem[64] = mem[64] + 64
            mem[_56] = 29
            mem[_56 + 32] = 'Transaction reverted silently'
            _60 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 29
            idx = 0
            while idx < 29:
                mem[_60 + idx + 68] = mem[_56 + idx + 32]
                idx = idx + 32
                continue 
            mem[_60 + 97] = 0
            revert with memory
              from mem[64]
               len _60 + -mem[64] + 100
        _55 = Mask(224, 0, return_data.size), mem[_50 + 32 len 4]
        require Mask(224, 0, return_data.size), mem[_50 + 32 len 4] >= 32
        _59 = mem[_50 + 36]
        require mem[_50 + 36] <= test266151307()
        require _50 + mem[_50 + 36] + 67 < _50 + Mask(224, 0, return_data.size), mem[_50 + 32 len 4] + 36
        _63 = mem[_50 + mem[_50 + 36] + 36]
        if mem[_50 + mem[_50 + 36] + 36] > test266151307():
            revert with 'NH{q', 65
        _66 = mem[64]
        if mem[64] + ceil32(mem[_50 + mem[_50 + 36] + 36]) + 32 > test266151307() or mem[64] + ceil32(mem[_50 + mem[_50 + 36] + 36]) + 32 < mem[64]:
            revert with 'NH{q', 65
        mem[64] = mem[64] + ceil32(mem[_50 + mem[_50 + 36] + 36]) + 32
        mem[_66] = _63
        require _59 + _63 + 68 <= _55 + 36
        idx = 0
        while idx < _63:
            mem[_66 + idx + 32] = mem[_50 + _59 + idx + 68]
            idx = idx + 32
            continue 
        if ceil32(_63) <= _63:
            _103 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = _63
            idx = 0
            while idx < _63:
                mem[_103 + idx + 68] = mem[_66 + idx + 32]
                idx = idx + 32
                continue 
            if ceil32(_63) > _63:
                mem[_103 + _63 + 68] = 0
            revert with memory
              from mem[64]
               len _103 + ceil32(_63) + -mem[64] + 68
        mem[_66 + _63 + 32] = 0
        _106 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = _63
        idx = 0
        while idx < _63:
            mem[_106 + idx + 68] = mem[_66 + idx + 32]
            idx = idx + 32
            continue 
        if ceil32(_63) > _63:
            mem[_106 + _63 + 68] = 0
        revert with memory
          from mem[64]
           len _106 + ceil32(_63) + -mem[64] + 68
}



}
