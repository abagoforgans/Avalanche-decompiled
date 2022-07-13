contract main {




// =====================  Runtime code  =====================


const blockNumber = block.number


address sub_14693646Address;
address sub_721f4b3bAddress;
address hasherAddress;
address tornadoProxyAddress;
address governanceAddress;
uint256 lastProcessedDepositLeaf;
uint256 lastProcessedWithdrawalLeaf;

function sub_14693646(?) payable {
    return sub_14693646Address
}

function tornadoProxy() payable {
    return tornadoProxyAddress
}

function governance() payable {
    return governanceAddress
}

function withdrawals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < withdrawals.length
    return withdrawals[arg1]
}

function sub_721f4b3b(?) payable {
    return sub_721f4b3bAddress
}

function lastProcessedWithdrawalLeaf() payable {
    return lastProcessedWithdrawalLeaf
}

function deposits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < deposits.length
    return deposits[arg1]
}

function lastProcessedDepositLeaf() payable {
    return lastProcessedDepositLeaf
}

function hasher() payable {
    return hasherAddress
}

function _fallback() payable {
    revert
}

function updateGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'Not authorized'
    governanceAddress = arg1
}

function sub_e38a2d8d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if governanceAddress != msg.sender:
        revert with 0, 'Not authorized'
    tornadoProxyAddress = address(arg1)
}

function registerDeposit(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tornadoProxyAddress != msg.sender:
        revert with 0, 'Not authorized'
    deposits.length++
    deposits[deposits.length] = sha3(address(arg1), arg2, block.number)
}

function registerWithdrawal(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tornadoProxyAddress != msg.sender:
        revert with 0, 'Not authorized'
    withdrawals.length++
    withdrawals[withdrawals.length] = sha3(address(arg1), arg2, block.number)
}

function depositRoot() payable {
    require ext_code.size(sub_14693646Address)
    staticcall sub_14693646Address.getLastRoot() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function withdrawalRoot() payable {
    require ext_code.size(sub_721f4b3bAddress)
    staticcall sub_721f4b3bAddress.getLastRoot() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function getRegisteredDeposits() payable {
    require deposits.length - lastProcessedDepositLeaf <= test266151307()
    mem[96] = deposits.length - lastProcessedDepositLeaf
    if deposits.length - lastProcessedDepositLeaf:
        mem[128 len 32 * deposits.length - lastProcessedDepositLeaf] = call.data[calldata.size len 32 * deposits.length - lastProcessedDepositLeaf]
    idx = 0
    while idx < deposits.length - lastProcessedDepositLeaf:
        require lastProcessedDepositLeaf + idx < deposits.length
        mem[0] = 5
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor[('name', 'deposits', 5) + stor6 + idx]
        idx = idx + 1
        continue 
    mem[(32 * deposits.length - lastProcessedDepositLeaf) + 128] = 32
    mem[(32 * deposits.length - lastProcessedDepositLeaf) + 160] = mem[96]
    mem[(32 * deposits.length - lastProcessedDepositLeaf) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[(32 * deposits.length - lastProcessedDepositLeaf) + 160 len (32 * mem[96]) + 32]
}

function validateRoots(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(sub_14693646Address)
    staticcall sub_14693646Address.isKnownRoot(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Incorrect deposit tree root'
    require ext_code.size(sub_721f4b3bAddress)
    staticcall sub_721f4b3bAddress.isKnownRoot(bytes32 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Incorrect withdrawal tree root'
}

function getRegisteredWithdrawals() payable {
    require withdrawals.length - lastProcessedWithdrawalLeaf <= test266151307()
    mem[96] = withdrawals.length - lastProcessedWithdrawalLeaf
    if withdrawals.length - lastProcessedWithdrawalLeaf:
        mem[128 len 32 * withdrawals.length - lastProcessedWithdrawalLeaf] = call.data[calldata.size len 32 * withdrawals.length - lastProcessedWithdrawalLeaf]
    idx = 0
    while idx < withdrawals.length - lastProcessedWithdrawalLeaf:
        require lastProcessedWithdrawalLeaf + idx < withdrawals.length
        mem[0] = 7
        require idx < mem[96]
        mem[(32 * idx) + 128] = stor[('name', 'withdrawals', 7) + stor8 + idx]
        idx = idx + 1
        continue 
    mem[(32 * withdrawals.length - lastProcessedWithdrawalLeaf) + 128] = 32
    mem[(32 * withdrawals.length - lastProcessedWithdrawalLeaf) + 160] = mem[96]
    mem[(32 * withdrawals.length - lastProcessedWithdrawalLeaf) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[(32 * withdrawals.length - lastProcessedWithdrawalLeaf) + 160 len (32 * mem[96]) + 32]
}

function resolve(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if chainid == 1:
        require ext_code.size(0xc2e074ec69a0dfb2997ba6c7d2e1e)
        staticcall 0xc2e074ec69a0dfb2997ba6c7d2e1e.resolver(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
    else:
        require ext_code.size(0x8595bfb0d940dfedc98943fa8a907091203f25ee)
        staticcall 0x8595bfb0d940dfedc98943fa8a907091203f25ee.resolver(bytes32 arg1) with:
                gas gas_remaining wei
               args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).addr(bytes32 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    return ext_call.return_data[12 len 20]
}

function sub_48968634(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _74 = mem[64]
            mem[64] = mem[64] + 96
            mem[_74] = 0
            mem[_74 + 32] = 0
            mem[_74 + 64] = 0
            require calldata.size + (-96 * idx) + -cd[4] - 36 >= 96
            _78 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
            mem[_78] = cd[((96 * idx) + cd[4] + 36)]
            require cd[((96 * idx) + cd[4] + 68)] == cd[((96 * idx) + cd[4] + 68)]
            mem[_78 + 32] = cd[((96 * idx) + cd[4] + 68)]
            require cd[((96 * idx) + cd[4] + 100)] == cd[((96 * idx) + cd[4] + 100)]
            mem[_78 + 64] = cd[((96 * idx) + cd[4] + 100)]
            _87 = mem[64]
            mem[mem[64] + 32] = address(cd[((96 * idx) + cd[4] + 36)])
            mem[mem[64] + 64] = cd[((96 * idx) + cd[4] + 68)]
            mem[mem[64] + 96] = cd[((96 * idx) + cd[4] + 100)]
            _92 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _94 = sha3(mem[_92 + 32 len mem[_92]])
            require lastProcessedDepositLeaf + idx < deposits.length
            mem[0] = 5
            if stor[('name', 'deposits', 5) + stor6 + idx] != _94:
                revert with 0, 'Incorrect deposit'
            mem[64] = _87 + 224
            mem[_87 + 128] = address(cd[((96 * idx) + cd[4] + 36)])
            mem[_87 + 160] = cd[((96 * idx) + cd[4] + 68)]
            mem[_87 + 192] = cd[((96 * idx) + cd[4] + 100)]
            mem[_87 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
            s = 0
            t = _87 + 128
            u = _87 + 228
            while s < 3:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(hasherAddress)
            staticcall hasherAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _87 + -mem[64] + 320]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_124] == mem[_124]
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_124]
            require lastProcessedDepositLeaf + idx < deposits.length
            mem[0] = 5
            stor[('name', 'deposits', 5) + stor6 + idx] = 0
            _131 = mem[_78 + 32]
            _133 = mem[_78 + 64]
            mem[mem[64]] = mem[_78 + 12 len 20]
            mem[mem[64] + 32] = _133
            mem[mem[64] + 64] = lastProcessedDepositLeaf + idx
            emit DepositData(mem[mem[64]], _133, lastProcessedDepositLeaf + idx, _131);
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _75 = mem[64]
            mem[64] = mem[64] + 96
            mem[_75] = 0
            mem[_75 + 32] = 0
            mem[_75 + 64] = 0
            require calldata.size + (-96 * idx) + -cd[4] - 36 >= 96
            _79 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
            mem[_79] = cd[((96 * idx) + cd[4] + 36)]
            require cd[((96 * idx) + cd[4] + 68)] == cd[((96 * idx) + cd[4] + 68)]
            mem[_79 + 32] = cd[((96 * idx) + cd[4] + 68)]
            require cd[((96 * idx) + cd[4] + 100)] == cd[((96 * idx) + cd[4] + 100)]
            mem[_79 + 64] = cd[((96 * idx) + cd[4] + 100)]
            _91 = mem[64]
            mem[mem[64] + 32] = address(cd[((96 * idx) + cd[4] + 36)])
            mem[mem[64] + 64] = cd[((96 * idx) + cd[4] + 68)]
            mem[mem[64] + 96] = cd[((96 * idx) + cd[4] + 100)]
            _95 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _97 = sha3(mem[_95 + 32 len mem[_95]])
            require lastProcessedDepositLeaf + idx < deposits.length
            mem[0] = 5
            if stor[('name', 'deposits', 5) + stor6 + idx] != _97:
                revert with 0, 'Incorrect deposit'
            mem[64] = _91 + 224
            mem[_91 + 128] = address(cd[((96 * idx) + cd[4] + 36)])
            mem[_91 + 160] = cd[((96 * idx) + cd[4] + 68)]
            mem[_91 + 192] = cd[((96 * idx) + cd[4] + 100)]
            mem[_91 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
            s = 0
            t = _91 + 128
            u = _91 + 228
            while s < 3:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(hasherAddress)
            staticcall hasherAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _91 + -mem[64] + 320]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_125] == mem[_125]
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_125]
            require lastProcessedDepositLeaf + idx < deposits.length
            mem[0] = 5
            stor[('name', 'deposits', 5) + stor6 + idx] = 0
            _136 = mem[_79 + 32]
            _138 = mem[_79 + 64]
            mem[mem[64]] = mem[_79 + 12 len 20]
            mem[mem[64] + 32] = _138
            mem[mem[64] + 64] = lastProcessedDepositLeaf + idx
            emit DepositData(mem[mem[64]], _138, lastProcessedDepositLeaf + idx, _136);
            idx = idx + 1
            continue 
    lastProcessedDepositLeaf += ('cd', 4).length
    mem[mem[64]] = 0xcba7a7ac00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    require ext_code.size(sub_14693646Address)
    call sub_14693646Address.0xcba7a7ac with:
         gas gas_remaining wei
        args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_59c4604f(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    require ('cd', 4).length <= test266151307()
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            _74 = mem[64]
            mem[64] = mem[64] + 96
            mem[_74] = 0
            mem[_74 + 32] = 0
            mem[_74 + 64] = 0
            require calldata.size + (-96 * idx) + -cd[4] - 36 >= 96
            _78 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
            mem[_78] = cd[((96 * idx) + cd[4] + 36)]
            require cd[((96 * idx) + cd[4] + 68)] == cd[((96 * idx) + cd[4] + 68)]
            mem[_78 + 32] = cd[((96 * idx) + cd[4] + 68)]
            require cd[((96 * idx) + cd[4] + 100)] == cd[((96 * idx) + cd[4] + 100)]
            mem[_78 + 64] = cd[((96 * idx) + cd[4] + 100)]
            _87 = mem[64]
            mem[mem[64] + 32] = address(cd[((96 * idx) + cd[4] + 36)])
            mem[mem[64] + 64] = cd[((96 * idx) + cd[4] + 68)]
            mem[mem[64] + 96] = cd[((96 * idx) + cd[4] + 100)]
            _92 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _94 = sha3(mem[_92 + 32 len mem[_92]])
            require lastProcessedWithdrawalLeaf + idx < withdrawals.length
            mem[0] = 7
            if stor[('name', 'withdrawals', 7) + stor8 + idx] != _94:
                revert with 0, 'Incorrect withdrawal'
            mem[64] = _87 + 224
            mem[_87 + 128] = address(cd[((96 * idx) + cd[4] + 36)])
            mem[_87 + 160] = cd[((96 * idx) + cd[4] + 68)]
            mem[_87 + 192] = cd[((96 * idx) + cd[4] + 100)]
            mem[_87 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
            s = 0
            t = _87 + 128
            u = _87 + 228
            while s < 3:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(hasherAddress)
            staticcall hasherAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _87 + -mem[64] + 320]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _124 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_124] == mem[_124]
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_124]
            require lastProcessedWithdrawalLeaf + idx < withdrawals.length
            mem[0] = 7
            stor[('name', 'withdrawals', 7) + stor8 + idx] = 0
            _131 = mem[_78 + 32]
            _133 = mem[_78 + 64]
            mem[mem[64]] = mem[_78 + 12 len 20]
            mem[mem[64] + 32] = _133
            mem[mem[64] + 64] = lastProcessedWithdrawalLeaf + idx
            emit WithdrawalData(mem[mem[64]], _133, lastProcessedWithdrawalLeaf + idx, _131);
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
        idx = 0
        while idx < ('cd', 4).length:
            _75 = mem[64]
            mem[64] = mem[64] + 96
            mem[_75] = 0
            mem[_75 + 32] = 0
            mem[_75 + 64] = 0
            require calldata.size + (-96 * idx) + -cd[4] - 36 >= 96
            _79 = mem[64]
            require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
            mem[64] = mem[64] + 96
            require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
            mem[_79] = cd[((96 * idx) + cd[4] + 36)]
            require cd[((96 * idx) + cd[4] + 68)] == cd[((96 * idx) + cd[4] + 68)]
            mem[_79 + 32] = cd[((96 * idx) + cd[4] + 68)]
            require cd[((96 * idx) + cd[4] + 100)] == cd[((96 * idx) + cd[4] + 100)]
            mem[_79 + 64] = cd[((96 * idx) + cd[4] + 100)]
            _91 = mem[64]
            mem[mem[64] + 32] = address(cd[((96 * idx) + cd[4] + 36)])
            mem[mem[64] + 64] = cd[((96 * idx) + cd[4] + 68)]
            mem[mem[64] + 96] = cd[((96 * idx) + cd[4] + 100)]
            _95 = mem[64]
            mem[mem[64]] = 96
            mem[64] = mem[64] + 128
            _97 = sha3(mem[_95 + 32 len mem[_95]])
            require lastProcessedWithdrawalLeaf + idx < withdrawals.length
            mem[0] = 7
            if stor[('name', 'withdrawals', 7) + stor8 + idx] != _97:
                revert with 0, 'Incorrect withdrawal'
            mem[64] = _91 + 224
            mem[_91 + 128] = address(cd[((96 * idx) + cd[4] + 36)])
            mem[_91 + 160] = cd[((96 * idx) + cd[4] + 68)]
            mem[_91 + 192] = cd[((96 * idx) + cd[4] + 100)]
            mem[_91 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
            s = 0
            t = _91 + 128
            u = _91 + 228
            while s < 3:
                mem[u] = mem[t]
                s = s + 1
                t = t + 32
                u = u + 32
                continue 
            require ext_code.size(hasherAddress)
            staticcall hasherAddress.mem[mem[64] len 4] with:
                    gas gas_remaining wei
                   args mem[mem[64] + 4 len _91 + -mem[64] + 320]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _125 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_125] == mem[_125]
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_125]
            require lastProcessedWithdrawalLeaf + idx < withdrawals.length
            mem[0] = 7
            stor[('name', 'withdrawals', 7) + stor8 + idx] = 0
            _136 = mem[_79 + 32]
            _138 = mem[_79 + 64]
            mem[mem[64]] = mem[_79 + 12 len 20]
            mem[mem[64] + 32] = _138
            mem[mem[64] + 64] = lastProcessedWithdrawalLeaf + idx
            emit WithdrawalData(mem[mem[64]], _138, lastProcessedWithdrawalLeaf + idx, _136);
            idx = idx + 1
            continue 
    lastProcessedWithdrawalLeaf += ('cd', 4).length
    mem[mem[64]] = 0xcba7a7ac00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    mem[mem[64] + 36] = mem[96]
    mem[mem[64] + 68 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    require ext_code.size(sub_721f4b3bAddress)
    call sub_721f4b3bAddress.0xcba7a7ac with:
         gas gas_remaining wei
        args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function bulkResolve(bytes32[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _111 = mem[(32 * idx) + 128]
            mem[mem[64] + 4] = mem[(32 * idx) + 128]
            if chainid == 1:
                require ext_code.size(0xc2e074ec69a0dfb2997ba6c7d2e1e)
                staticcall 0xc2e074ec69a0dfb2997ba6c7d2e1e.resolver(bytes32 arg1) with:
                        gas gas_remaining wei
                       args _111
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _128 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _132 = mem[_128]
                require mem[_128] == mem[_128 + 12 len 20]
                mem[mem[64] + 4] = _111
                require ext_code.size(address(_132))
                staticcall address(_132).addr(bytes32 arg1) with:
                        gas gas_remaining wei
                       args _111
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _144 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_144] == mem[_144 + 12 len 20]
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_144 + 12 len 20]
            else:
                require ext_code.size(0x8595bfb0d940dfedc98943fa8a907091203f25ee)
                staticcall 0x8595bfb0d940dfedc98943fa8a907091203f25ee.resolver(bytes32 arg1) with:
                        gas gas_remaining wei
                       args _111
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _129 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _133 = mem[_129]
                require mem[_129] == mem[_129 + 12 len 20]
                mem[mem[64] + 4] = _111
                require ext_code.size(address(_133))
                staticcall address(_133).addr(bytes32 arg1) with:
                        gas gas_remaining wei
                       args _111
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _145 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_145] == mem[_145 + 12 len 20]
                require idx < mem[(32 * arg1.length) + 128]
                mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_145 + 12 len 20]
            idx = idx + 1
            continue 
        _110 = mem[64]
        mem[mem[64]] = 32
        _114 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        while idx < _114:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _110 + (32 * _114) + -mem[64] + 64
    mem[(32 * arg1.length) + 160 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _113 = mem[(32 * idx) + 128]
        mem[mem[64] + 4] = mem[(32 * idx) + 128]
        if chainid == 1:
            require ext_code.size(0xc2e074ec69a0dfb2997ba6c7d2e1e)
            staticcall 0xc2e074ec69a0dfb2997ba6c7d2e1e.resolver(bytes32 arg1) with:
                    gas gas_remaining wei
                   args _113
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _130 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _134 = mem[_130]
            require mem[_130] == mem[_130 + 12 len 20]
            mem[mem[64] + 4] = _113
            require ext_code.size(address(_134))
            staticcall address(_134).addr(bytes32 arg1) with:
                    gas gas_remaining wei
                   args _113
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _146 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_146] == mem[_146 + 12 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_146 + 12 len 20]
        else:
            require ext_code.size(0x8595bfb0d940dfedc98943fa8a907091203f25ee)
            staticcall 0x8595bfb0d940dfedc98943fa8a907091203f25ee.resolver(bytes32 arg1) with:
                    gas gas_remaining wei
                   args _113
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _131 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _135 = mem[_131]
            require mem[_131] == mem[_131 + 12 len 20]
            mem[mem[64] + 4] = _113
            require ext_code.size(address(_135))
            staticcall address(_135).addr(bytes32 arg1) with:
                    gas gas_remaining wei
                   args _113
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _147 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_147] == mem[_147 + 12 len 20]
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = mem[_147 + 12 len 20]
        idx = idx + 1
        continue 
    _112 = mem[64]
    mem[mem[64]] = 32
    _115 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    idx = 0
    s = (32 * arg1.length) + 160
    t = mem[64] + 64
    while idx < _115:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _112 + (32 * _115) + -mem[64] + 64
}

function sub_6360b82b(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (96 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (96 * ('cd', 36).length) + 36 <= calldata.size
    if ('cd', 4).length <= 0:
        if ('cd', 36).length > 0:
            require ('cd', 36).length <= test266151307()
            mem[96] = ('cd', 36).length
            mem[64] = (32 * ('cd', 36).length) + 128
            if not ('cd', 36).length:
                idx = 0
                while idx < ('cd', 36).length:
                    _327 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_327] = 0
                    mem[_327 + 32] = 0
                    mem[_327 + 64] = 0
                    require calldata.size + (-96 * idx) + -cd[36] - 36 >= 96
                    _335 = mem[64]
                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                    mem[64] = mem[64] + 96
                    require cd[((96 * idx) + cd[36] + 36)] == address(cd[((96 * idx) + cd[36] + 36)])
                    mem[_335] = cd[((96 * idx) + cd[36] + 36)]
                    require cd[((96 * idx) + cd[36] + 68)] == cd[((96 * idx) + cd[36] + 68)]
                    mem[_335 + 32] = cd[((96 * idx) + cd[36] + 68)]
                    require cd[((96 * idx) + cd[36] + 100)] == cd[((96 * idx) + cd[36] + 100)]
                    mem[_335 + 64] = cd[((96 * idx) + cd[36] + 100)]
                    _374 = mem[64]
                    mem[mem[64] + 32] = address(cd[((96 * idx) + cd[36] + 36)])
                    mem[mem[64] + 64] = cd[((96 * idx) + cd[36] + 68)]
                    mem[mem[64] + 96] = cd[((96 * idx) + cd[36] + 100)]
                    _389 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _391 = sha3(mem[_389 + 32 len mem[_389]])
                    require lastProcessedWithdrawalLeaf + idx < withdrawals.length
                    mem[0] = 7
                    if stor[('name', 'withdrawals', 7) + stor8 + idx] != _391:
                        revert with 0, 'Incorrect withdrawal'
                    mem[64] = _374 + 224
                    mem[_374 + 128] = address(cd[((96 * idx) + cd[36] + 36)])
                    mem[_374 + 160] = cd[((96 * idx) + cd[36] + 68)]
                    mem[_374 + 192] = cd[((96 * idx) + cd[36] + 100)]
                    mem[_374 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
                    s = 0
                    t = _374 + 128
                    u = _374 + 228
                    while s < 3:
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(hasherAddress)
                    staticcall hasherAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _374 + -mem[64] + 320]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _517 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_517] == mem[_517]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = mem[_517]
                    require lastProcessedWithdrawalLeaf + idx < withdrawals.length
                    mem[0] = 7
                    stor[('name', 'withdrawals', 7) + stor8 + idx] = 0
                    _542 = mem[_335 + 32]
                    _544 = mem[_335 + 64]
                    mem[mem[64]] = mem[_335 + 12 len 20]
                    mem[mem[64] + 32] = _544
                    mem[mem[64] + 64] = lastProcessedWithdrawalLeaf + idx
                    emit WithdrawalData(mem[mem[64]], _544, lastProcessedWithdrawalLeaf + idx, _542);
                    idx = idx + 1
                    continue 
            else:
                mem[128 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                idx = 0
                while idx < ('cd', 36).length:
                    _328 = mem[64]
                    mem[64] = mem[64] + 96
                    mem[_328] = 0
                    mem[_328 + 32] = 0
                    mem[_328 + 64] = 0
                    require calldata.size + (-96 * idx) + -cd[36] - 36 >= 96
                    _336 = mem[64]
                    require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                    mem[64] = mem[64] + 96
                    require cd[((96 * idx) + cd[36] + 36)] == address(cd[((96 * idx) + cd[36] + 36)])
                    mem[_336] = cd[((96 * idx) + cd[36] + 36)]
                    require cd[((96 * idx) + cd[36] + 68)] == cd[((96 * idx) + cd[36] + 68)]
                    mem[_336 + 32] = cd[((96 * idx) + cd[36] + 68)]
                    require cd[((96 * idx) + cd[36] + 100)] == cd[((96 * idx) + cd[36] + 100)]
                    mem[_336 + 64] = cd[((96 * idx) + cd[36] + 100)]
                    _378 = mem[64]
                    mem[mem[64] + 32] = address(cd[((96 * idx) + cd[36] + 36)])
                    mem[mem[64] + 64] = cd[((96 * idx) + cd[36] + 68)]
                    mem[mem[64] + 96] = cd[((96 * idx) + cd[36] + 100)]
                    _392 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _394 = sha3(mem[_392 + 32 len mem[_392]])
                    require lastProcessedWithdrawalLeaf + idx < withdrawals.length
                    mem[0] = 7
                    if stor[('name', 'withdrawals', 7) + stor8 + idx] != _394:
                        revert with 0, 'Incorrect withdrawal'
                    mem[64] = _378 + 224
                    mem[_378 + 128] = address(cd[((96 * idx) + cd[36] + 36)])
                    mem[_378 + 160] = cd[((96 * idx) + cd[36] + 68)]
                    mem[_378 + 192] = cd[((96 * idx) + cd[36] + 100)]
                    mem[_378 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
                    s = 0
                    t = _378 + 128
                    u = _378 + 228
                    while s < 3:
                        mem[u] = mem[t]
                        s = s + 1
                        t = t + 32
                        u = u + 32
                        continue 
                    require ext_code.size(hasherAddress)
                    staticcall hasherAddress.mem[mem[64] len 4] with:
                            gas gas_remaining wei
                           args mem[mem[64] + 4 len _378 + -mem[64] + 320]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _518 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_518] == mem[_518]
                    require idx < mem[96]
                    mem[(32 * idx) + 128] = mem[_518]
                    require lastProcessedWithdrawalLeaf + idx < withdrawals.length
                    mem[0] = 7
                    stor[('name', 'withdrawals', 7) + stor8 + idx] = 0
                    _547 = mem[_336 + 32]
                    _549 = mem[_336 + 64]
                    mem[mem[64]] = mem[_336 + 12 len 20]
                    mem[mem[64] + 32] = _549
                    mem[mem[64] + 64] = lastProcessedWithdrawalLeaf + idx
                    emit WithdrawalData(mem[mem[64]], _549, lastProcessedWithdrawalLeaf + idx, _547);
                    idx = idx + 1
                    continue 
            lastProcessedWithdrawalLeaf += ('cd', 36).length
            mem[mem[64]] = 0xcba7a7ac00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            require ext_code.size(sub_721f4b3bAddress)
            call sub_721f4b3bAddress.0xcba7a7ac with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        require ('cd', 4).length <= test266151307()
        mem[96] = ('cd', 4).length
        mem[64] = (32 * ('cd', 4).length) + 128
        if not ('cd', 4).length:
            idx = 0
            while idx < ('cd', 4).length:
                _329 = mem[64]
                mem[64] = mem[64] + 96
                mem[_329] = 0
                mem[_329 + 32] = 0
                mem[_329 + 64] = 0
                require calldata.size + (-96 * idx) + -cd[4] - 36 >= 96
                _337 = mem[64]
                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                mem[64] = mem[64] + 96
                require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
                mem[_337] = cd[((96 * idx) + cd[4] + 36)]
                require cd[((96 * idx) + cd[4] + 68)] == cd[((96 * idx) + cd[4] + 68)]
                mem[_337 + 32] = cd[((96 * idx) + cd[4] + 68)]
                require cd[((96 * idx) + cd[4] + 100)] == cd[((96 * idx) + cd[4] + 100)]
                mem[_337 + 64] = cd[((96 * idx) + cd[4] + 100)]
                _383 = mem[64]
                mem[mem[64] + 32] = address(cd[((96 * idx) + cd[4] + 36)])
                mem[mem[64] + 64] = cd[((96 * idx) + cd[4] + 68)]
                mem[mem[64] + 96] = cd[((96 * idx) + cd[4] + 100)]
                _395 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                _397 = sha3(mem[_395 + 32 len mem[_395]])
                require lastProcessedDepositLeaf + idx < deposits.length
                mem[0] = 5
                if stor[('name', 'deposits', 5) + stor6 + idx] != _397:
                    revert with 0, 'Incorrect deposit'
                mem[64] = _383 + 224
                mem[_383 + 128] = address(cd[((96 * idx) + cd[4] + 36)])
                mem[_383 + 160] = cd[((96 * idx) + cd[4] + 68)]
                mem[_383 + 192] = cd[((96 * idx) + cd[4] + 100)]
                mem[_383 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
                s = 0
                t = _383 + 128
                u = _383 + 228
                while s < 3:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(hasherAddress)
                staticcall hasherAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _383 + -mem[64] + 320]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _519 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_519] == mem[_519]
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_519]
                require lastProcessedDepositLeaf + idx < deposits.length
                mem[0] = 5
                stor[('name', 'deposits', 5) + stor6 + idx] = 0
                _553 = mem[_337 + 32]
                _555 = mem[_337 + 64]
                mem[mem[64]] = mem[_337 + 12 len 20]
                mem[mem[64] + 32] = _555
                mem[mem[64] + 64] = lastProcessedDepositLeaf + idx
                emit DepositData(mem[mem[64]], _555, lastProcessedDepositLeaf + idx, _553);
                idx = idx + 1
                continue 
            lastProcessedDepositLeaf += ('cd', 4).length
            mem[mem[64]] = 0xcba7a7ac00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            require ext_code.size(sub_14693646Address)
            call sub_14693646Address.0xcba7a7ac with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 36).length > 0:
                require ('cd', 36).length <= test266151307()
                _525 = mem[64]
                mem[mem[64]] = ('cd', 36).length
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                if not ('cd', 36).length:
                    s = 0
                    while s < ('cd', 36).length:
                        _699 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_699] = 0
                        mem[_699 + 32] = 0
                        mem[_699 + 64] = 0
                        require calldata.size + (-96 * s) + -cd[36] - 36 >= 96
                        _707 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * s) + cd[36] + 36)] == address(cd[((96 * s) + cd[36] + 36)])
                        mem[_707] = cd[((96 * s) + cd[36] + 36)]
                        require cd[((96 * s) + cd[36] + 68)] == cd[((96 * s) + cd[36] + 68)]
                        mem[_707 + 32] = cd[((96 * s) + cd[36] + 68)]
                        require cd[((96 * s) + cd[36] + 100)] == cd[((96 * s) + cd[36] + 100)]
                        mem[_707 + 64] = cd[((96 * s) + cd[36] + 100)]
                        _722 = mem[64]
                        mem[mem[64] + 32] = address(cd[((96 * s) + cd[36] + 36)])
                        mem[mem[64] + 64] = cd[((96 * s) + cd[36] + 68)]
                        mem[mem[64] + 96] = cd[((96 * s) + cd[36] + 100)]
                        _735 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        _737 = sha3(mem[_735 + 32 len mem[_735]])
                        require lastProcessedWithdrawalLeaf + s < withdrawals.length
                        mem[0] = 7
                        if stor[('name', 'withdrawals', 7) + stor8 + s] != _737:
                            revert with 0, 'Incorrect withdrawal'
                        mem[64] = _722 + 224
                        mem[_722 + 128] = address(cd[((96 * s) + cd[36] + 36)])
                        mem[_722 + 160] = cd[((96 * s) + cd[36] + 68)]
                        mem[_722 + 192] = cd[((96 * s) + cd[36] + 100)]
                        mem[_722 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
                        t = 0
                        u = _722 + 128
                        v = _722 + 228
                        while t < 3:
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(hasherAddress)
                        staticcall hasherAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _722 + -mem[64] + 320]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _799 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_799] == mem[_799]
                        require s < mem[_525]
                        mem[(32 * s) + _525 + 32] = mem[_799]
                        require lastProcessedWithdrawalLeaf + s < withdrawals.length
                        mem[0] = 7
                        stor[('name', 'withdrawals', 7) + stor8 + s] = 0
                        _812 = mem[_707 + 32]
                        _814 = mem[_707 + 64]
                        mem[mem[64]] = mem[_707 + 12 len 20]
                        mem[mem[64] + 32] = _814
                        mem[mem[64] + 64] = lastProcessedWithdrawalLeaf + s
                        emit WithdrawalData(mem[mem[64]], _814, lastProcessedWithdrawalLeaf + s, _812);
                        s = s + 1
                        continue 
                    lastProcessedWithdrawalLeaf += ('cd', 36).length
                    mem[mem[64]] = 0xcba7a7ac00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _703 = mem[_525]
                    mem[mem[64] + 36] = mem[_525]
                    mem[mem[64] + 68 len 32 * _703] = mem[_525 + 32 len 32 * _703]
                    require ext_code.size(sub_721f4b3bAddress)
                    call sub_721f4b3bAddress.0xcba7a7ac with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len (32 * _703) + 32]
                else:
                    mem[_525 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    idx = 0
                    while idx < ('cd', 36).length:
                        _700 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_700] = 0
                        mem[_700 + 32] = 0
                        mem[_700 + 64] = 0
                        require calldata.size + (-96 * idx) + -cd[36] - 36 >= 96
                        _708 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * idx) + cd[36] + 36)] == address(cd[((96 * idx) + cd[36] + 36)])
                        mem[_708] = cd[((96 * idx) + cd[36] + 36)]
                        require cd[((96 * idx) + cd[36] + 68)] == cd[((96 * idx) + cd[36] + 68)]
                        mem[_708 + 32] = cd[((96 * idx) + cd[36] + 68)]
                        require cd[((96 * idx) + cd[36] + 100)] == cd[((96 * idx) + cd[36] + 100)]
                        mem[_708 + 64] = cd[((96 * idx) + cd[36] + 100)]
                        _726 = mem[64]
                        mem[mem[64] + 32] = address(cd[((96 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = cd[((96 * idx) + cd[36] + 68)]
                        mem[mem[64] + 96] = cd[((96 * idx) + cd[36] + 100)]
                        _738 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        _740 = sha3(mem[_738 + 32 len mem[_738]])
                        require lastProcessedWithdrawalLeaf + idx < withdrawals.length
                        mem[0] = 7
                        if stor[('name', 'withdrawals', 7) + stor8 + idx] != _740:
                            revert with 0, 'Incorrect withdrawal'
                        mem[64] = _726 + 224
                        mem[_726 + 128] = address(cd[((96 * idx) + cd[36] + 36)])
                        mem[_726 + 160] = cd[((96 * idx) + cd[36] + 68)]
                        mem[_726 + 192] = cd[((96 * idx) + cd[36] + 100)]
                        mem[_726 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
                        s = 0
                        t = _726 + 128
                        u = _726 + 228
                        while s < 3:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(hasherAddress)
                        staticcall hasherAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _726 + -mem[64] + 320]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _800 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_800] == mem[_800]
                        require idx < mem[_525]
                        mem[(32 * idx) + _525 + 32] = mem[_800]
                        require lastProcessedWithdrawalLeaf + idx < withdrawals.length
                        mem[0] = 7
                        stor[('name', 'withdrawals', 7) + stor8 + idx] = 0
                        _817 = mem[_708 + 32]
                        _819 = mem[_708 + 64]
                        mem[mem[64]] = mem[_708 + 12 len 20]
                        mem[mem[64] + 32] = _819
                        mem[mem[64] + 64] = lastProcessedWithdrawalLeaf + idx
                        emit WithdrawalData(mem[mem[64]], _819, lastProcessedWithdrawalLeaf + idx, _817);
                        idx = idx + 1
                        continue 
                    lastProcessedWithdrawalLeaf += ('cd', 36).length
                    mem[mem[64]] = 0xcba7a7ac00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _704 = mem[_525]
                    mem[mem[64] + 36] = mem[_525]
                    mem[mem[64] + 68 len 32 * _704] = mem[_525 + 32 len 32 * _704]
                    require ext_code.size(sub_721f4b3bAddress)
                    call sub_721f4b3bAddress.0xcba7a7ac with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len (32 * _704) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            mem[128 len 32 * ('cd', 4).length] = call.data[calldata.size len 32 * ('cd', 4).length]
            idx = 0
            while idx < ('cd', 4).length:
                _330 = mem[64]
                mem[64] = mem[64] + 96
                mem[_330] = 0
                mem[_330 + 32] = 0
                mem[_330 + 64] = 0
                require calldata.size + (-96 * idx) + -cd[4] - 36 >= 96
                _338 = mem[64]
                require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                mem[64] = mem[64] + 96
                require cd[((96 * idx) + cd[4] + 36)] == address(cd[((96 * idx) + cd[4] + 36)])
                mem[_338] = cd[((96 * idx) + cd[4] + 36)]
                require cd[((96 * idx) + cd[4] + 68)] == cd[((96 * idx) + cd[4] + 68)]
                mem[_338 + 32] = cd[((96 * idx) + cd[4] + 68)]
                require cd[((96 * idx) + cd[4] + 100)] == cd[((96 * idx) + cd[4] + 100)]
                mem[_338 + 64] = cd[((96 * idx) + cd[4] + 100)]
                _388 = mem[64]
                mem[mem[64] + 32] = address(cd[((96 * idx) + cd[4] + 36)])
                mem[mem[64] + 64] = cd[((96 * idx) + cd[4] + 68)]
                mem[mem[64] + 96] = cd[((96 * idx) + cd[4] + 100)]
                _398 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                _400 = sha3(mem[_398 + 32 len mem[_398]])
                require lastProcessedDepositLeaf + idx < deposits.length
                mem[0] = 5
                if stor[('name', 'deposits', 5) + stor6 + idx] != _400:
                    revert with 0, 'Incorrect deposit'
                mem[64] = _388 + 224
                mem[_388 + 128] = address(cd[((96 * idx) + cd[4] + 36)])
                mem[_388 + 160] = cd[((96 * idx) + cd[4] + 68)]
                mem[_388 + 192] = cd[((96 * idx) + cd[4] + 100)]
                mem[_388 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
                s = 0
                t = _388 + 128
                u = _388 + 228
                while s < 3:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(hasherAddress)
                staticcall hasherAddress.mem[mem[64] len 4] with:
                        gas gas_remaining wei
                       args mem[mem[64] + 4 len _388 + -mem[64] + 320]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _520 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_520] == mem[_520]
                require idx < mem[96]
                mem[(32 * idx) + 128] = mem[_520]
                require lastProcessedDepositLeaf + idx < deposits.length
                mem[0] = 5
                stor[('name', 'deposits', 5) + stor6 + idx] = 0
                _559 = mem[_338 + 32]
                _561 = mem[_338 + 64]
                mem[mem[64]] = mem[_338 + 12 len 20]
                mem[mem[64] + 32] = _561
                mem[mem[64] + 64] = lastProcessedDepositLeaf + idx
                emit DepositData(mem[mem[64]], _561, lastProcessedDepositLeaf + idx, _559);
                idx = idx + 1
                continue 
            lastProcessedDepositLeaf += ('cd', 4).length
            mem[mem[64]] = 0xcba7a7ac00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = mem[96]
            mem[mem[64] + 68 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
            require ext_code.size(sub_14693646Address)
            call sub_14693646Address.0xcba7a7ac with:
                 gas gas_remaining wei
                args 32, mem[mem[64] + 36 len (32 * mem[96]) + 32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if ('cd', 36).length > 0:
                require ('cd', 36).length <= test266151307()
                _526 = mem[64]
                mem[mem[64]] = ('cd', 36).length
                mem[64] = mem[64] + (32 * ('cd', 36).length) + 32
                if not ('cd', 36).length:
                    s = 0
                    while s < ('cd', 36).length:
                        _701 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_701] = 0
                        mem[_701 + 32] = 0
                        mem[_701 + 64] = 0
                        require calldata.size + (-96 * s) + -cd[36] - 36 >= 96
                        _709 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * s) + cd[36] + 36)] == address(cd[((96 * s) + cd[36] + 36)])
                        mem[_709] = cd[((96 * s) + cd[36] + 36)]
                        require cd[((96 * s) + cd[36] + 68)] == cd[((96 * s) + cd[36] + 68)]
                        mem[_709 + 32] = cd[((96 * s) + cd[36] + 68)]
                        require cd[((96 * s) + cd[36] + 100)] == cd[((96 * s) + cd[36] + 100)]
                        mem[_709 + 64] = cd[((96 * s) + cd[36] + 100)]
                        _730 = mem[64]
                        mem[mem[64] + 32] = address(cd[((96 * s) + cd[36] + 36)])
                        mem[mem[64] + 64] = cd[((96 * s) + cd[36] + 68)]
                        mem[mem[64] + 96] = cd[((96 * s) + cd[36] + 100)]
                        _741 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        _743 = sha3(mem[_741 + 32 len mem[_741]])
                        require lastProcessedWithdrawalLeaf + s < withdrawals.length
                        mem[0] = 7
                        if stor[('name', 'withdrawals', 7) + stor8 + s] != _743:
                            revert with 0, 'Incorrect withdrawal'
                        mem[64] = _730 + 224
                        mem[_730 + 128] = address(cd[((96 * s) + cd[36] + 36)])
                        mem[_730 + 160] = cd[((96 * s) + cd[36] + 68)]
                        mem[_730 + 192] = cd[((96 * s) + cd[36] + 100)]
                        mem[_730 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
                        t = 0
                        u = _730 + 128
                        v = _730 + 228
                        while t < 3:
                            mem[v] = mem[u]
                            t = t + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(hasherAddress)
                        staticcall hasherAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _730 + -mem[64] + 320]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _801 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_801] == mem[_801]
                        require s < mem[_526]
                        mem[(32 * s) + _526 + 32] = mem[_801]
                        require lastProcessedWithdrawalLeaf + s < withdrawals.length
                        mem[0] = 7
                        stor[('name', 'withdrawals', 7) + stor8 + s] = 0
                        _822 = mem[_709 + 32]
                        _824 = mem[_709 + 64]
                        mem[mem[64]] = mem[_709 + 12 len 20]
                        mem[mem[64] + 32] = _824
                        mem[mem[64] + 64] = lastProcessedWithdrawalLeaf + s
                        emit WithdrawalData(mem[mem[64]], _824, lastProcessedWithdrawalLeaf + s, _822);
                        s = s + 1
                        continue 
                    lastProcessedWithdrawalLeaf += ('cd', 36).length
                    mem[mem[64]] = 0xcba7a7ac00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _705 = mem[_526]
                    mem[mem[64] + 36] = mem[_526]
                    mem[mem[64] + 68 len 32 * _705] = mem[_526 + 32 len 32 * _705]
                    require ext_code.size(sub_721f4b3bAddress)
                    call sub_721f4b3bAddress.0xcba7a7ac with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len (32 * _705) + 32]
                else:
                    mem[_526 + 32 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
                    idx = 0
                    while idx < ('cd', 36).length:
                        _702 = mem[64]
                        mem[64] = mem[64] + 96
                        mem[_702] = 0
                        mem[_702 + 32] = 0
                        mem[_702 + 64] = 0
                        require calldata.size + (-96 * idx) + -cd[36] - 36 >= 96
                        _710 = mem[64]
                        require mem[64] + 96 <= test266151307() and mem[64] + 96 >= mem[64]
                        mem[64] = mem[64] + 96
                        require cd[((96 * idx) + cd[36] + 36)] == address(cd[((96 * idx) + cd[36] + 36)])
                        mem[_710] = cd[((96 * idx) + cd[36] + 36)]
                        require cd[((96 * idx) + cd[36] + 68)] == cd[((96 * idx) + cd[36] + 68)]
                        mem[_710 + 32] = cd[((96 * idx) + cd[36] + 68)]
                        require cd[((96 * idx) + cd[36] + 100)] == cd[((96 * idx) + cd[36] + 100)]
                        mem[_710 + 64] = cd[((96 * idx) + cd[36] + 100)]
                        _734 = mem[64]
                        mem[mem[64] + 32] = address(cd[((96 * idx) + cd[36] + 36)])
                        mem[mem[64] + 64] = cd[((96 * idx) + cd[36] + 68)]
                        mem[mem[64] + 96] = cd[((96 * idx) + cd[36] + 100)]
                        _744 = mem[64]
                        mem[mem[64]] = 96
                        mem[64] = mem[64] + 128
                        _746 = sha3(mem[_744 + 32 len mem[_744]])
                        require lastProcessedWithdrawalLeaf + idx < withdrawals.length
                        mem[0] = 7
                        if stor[('name', 'withdrawals', 7) + stor8 + idx] != _746:
                            revert with 0, 'Incorrect withdrawal'
                        mem[64] = _734 + 224
                        mem[_734 + 128] = address(cd[((96 * idx) + cd[36] + 36)])
                        mem[_734 + 160] = cd[((96 * idx) + cd[36] + 68)]
                        mem[_734 + 192] = cd[((96 * idx) + cd[36] + 100)]
                        mem[_734 + 224] = 0x5a53025d00000000000000000000000000000000000000000000000000000000
                        s = 0
                        t = _734 + 128
                        u = _734 + 228
                        while s < 3:
                            mem[u] = mem[t]
                            s = s + 1
                            t = t + 32
                            u = u + 32
                            continue 
                        require ext_code.size(hasherAddress)
                        staticcall hasherAddress.mem[mem[64] len 4] with:
                                gas gas_remaining wei
                               args mem[mem[64] + 4 len _734 + -mem[64] + 320]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _802 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_802] == mem[_802]
                        require idx < mem[_526]
                        mem[(32 * idx) + _526 + 32] = mem[_802]
                        require lastProcessedWithdrawalLeaf + idx < withdrawals.length
                        mem[0] = 7
                        stor[('name', 'withdrawals', 7) + stor8 + idx] = 0
                        _827 = mem[_710 + 32]
                        _829 = mem[_710 + 64]
                        mem[mem[64]] = mem[_710 + 12 len 20]
                        mem[mem[64] + 32] = _829
                        mem[mem[64] + 64] = lastProcessedWithdrawalLeaf + idx
                        emit WithdrawalData(mem[mem[64]], _829, lastProcessedWithdrawalLeaf + idx, _827);
                        idx = idx + 1
                        continue 
                    lastProcessedWithdrawalLeaf += ('cd', 36).length
                    mem[mem[64]] = 0xcba7a7ac00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _706 = mem[_526]
                    mem[mem[64] + 36] = mem[_526]
                    mem[mem[64] + 68 len 32 * _706] = mem[_526 + 32 len 32 * _706]
                    require ext_code.size(sub_721f4b3bAddress)
                    call sub_721f4b3bAddress.0xcba7a7ac with:
                         gas gas_remaining wei
                        args 32, mem[mem[64] + 36 len (32 * _706) + 32]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}



}
