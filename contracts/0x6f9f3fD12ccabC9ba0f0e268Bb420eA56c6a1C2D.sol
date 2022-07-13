contract main {




// =====================  Runtime code  =====================


const blockNumber = block.number

const SNARK_FIELD = 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001

const ITEM_SIZE = 56

const CHUNK_TREE_HEIGHT = 8

const BYTES_SIZE = 14404

const CHUNK_SIZE = 256


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address governanceAddress;
uint256 depositRoot;
uint256 previousDepositRoot;
uint256 withdrawalRoot;
uint256 previousWithdrawalRoot;
address tornadoProxyAddress;
address treeUpdateVerifierAddress;
address tornadoTreesV1Address;
mapping of uint256 deposits;
uint256 depositsLength;
uint256 lastProcessedDepositLeaf;
uint256 depositsV1Length;
mapping of uint256 withdrawals;
uint256 withdrawalsLength;
uint256 lastProcessedWithdrawalLeaf;
uint256 withdrawalsV1Length;

function withdrawalsLength() payable {
    return withdrawalsLength
}

function tornadoProxy() payable {
    return tornadoProxyAddress
}

function tornadoTreesV1() payable {
    return tornadoTreesV1Address
}

function withdrawalsV1Length() payable {
    return withdrawalsV1Length
}

function depositsV1Length() payable {
    return depositsV1Length
}

function treeUpdateVerifier() payable {
    return treeUpdateVerifierAddress
}

function governance() payable {
    return governanceAddress
}

function withdrawals(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return withdrawals[arg1]
}

function depositRoot() payable {
    return depositRoot
}

function lastProcessedWithdrawalLeaf() payable {
    return lastProcessedWithdrawalLeaf
}

function deposits(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return deposits[arg1]
}

function previousWithdrawalRoot() payable {
    return previousWithdrawalRoot
}

function lastProcessedDepositLeaf() payable {
    return lastProcessedDepositLeaf
}

function withdrawalRoot() payable {
    return withdrawalRoot
}

function depositsLength() payable {
    return depositsLength
}

function previousDepositRoot() payable {
    return previousDepositRoot
}

function _fallback() payable {
    revert
}

function setTornadoProxyContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only governance can perform this action'
    tornadoProxyAddress = arg1
    emit ProxyUpdated(arg1);
}

function setVerifierContract(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only governance can perform this action'
    treeUpdateVerifierAddress = arg1
    emit VerifierUpdated(arg1);
}

function sub_e7d460bb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if governanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only governance can perform this action'
    governanceAddress = address(arg1)
    emit NewGovernance(governanceAddress);
}

function registerDeposit(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tornadoProxyAddress != msg.sender:
        revert with 0, 'Not authorized'
    deposits[stor60] = sha3(address(arg1), arg2, block.number)
    emit DepositData(address(arg1), block.number, depositsLength, arg2);
    depositsLength++
}

function registerWithdrawal(address arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if tornadoProxyAddress != msg.sender:
        revert with 0, 'Not authorized'
    withdrawals[stor64] = sha3(address(arg1), arg2, block.number)
    emit WithdrawalData(address(arg1), block.number, withdrawalsLength, arg2);
    withdrawalsLength++
}

function validateRoots(bytes32 arg1, bytes32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 != depositRoot:
        if arg1 != previousDepositRoot:
            revert with 0, 'Incorrect deposit tree root'
    if arg2 != withdrawalRoot:
        if arg2 != previousWithdrawalRoot:
            revert with 0, 'Incorrect withdrawal tree root'
}

function elementExists(address arg1, string arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 <= test266151307() and ceil32(arg2.length) + 128 >= 96
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 == arg3
    mem[ceil32(arg2.length) + 164] = arg3
    mem[ceil32(arg2.length) + 128] = 36
    mem[ceil32(arg2.length) + 196 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if ceil32(arg2.length) > arg2.length:
        mem[ceil32(arg2.length) + arg2.length + 196] = 0
    mem[ceil32(arg2.length) + 164 len 28] = Mask(224, 32, arg3) >> 32
    mem[ceil32(arg2.length) + 160 len 4] = Mask(32, 224, sha3(Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256)) >> 224
    mem[ceil32(arg2.length) + 196 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
    if ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) > Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]:
        mem[ceil32(arg2.length) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 196] = 0
    staticcall arg1.mem[ceil32(arg2.length) + 196 len 4] with:
            gas 2500 wei
           args mem[ceil32(arg2.length) + 200 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
    return bool(ext_call.success)
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        if not uint8(stor0.field_8):
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
    if governanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only governance can perform this action'
    tornadoProxyAddress = arg1
    treeUpdateVerifierAddress = arg2
    require ext_code.size(tornadoTreesV1Address)
    staticcall tornadoTreesV1Address.0x8955fe8a with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    depositRoot = ext_call.return_data[0]
    require ext_code.size(tornadoTreesV1Address)
    staticcall tornadoTreesV1Address.0xb4a6359e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[31 len 1]:
        revert with 0, 'Incorrect TornadoTrees state'
    lastProcessedDepositLeaf = ext_call.return_data[0]
    depositsLength = depositsV1Length
    require ext_code.size(tornadoTreesV1Address)
    staticcall tornadoTreesV1Address.0xc34c7882 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    withdrawalRoot = ext_call.return_data[0]
    require ext_code.size(tornadoTreesV1Address)
    staticcall tornadoTreesV1Address.0xa2b28fe6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[31 len 1]:
        revert with 0, 'Incorrect TornadoTrees state'
    lastProcessedWithdrawalLeaf = ext_call.return_data[0]
    withdrawalsLength = withdrawalsV1Length
    if not uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 0
}

function updateDepositTree(bytes arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, uint32 arg5, bytes32 arg6, address arg7, uint32[256] arg8) payable {
    require calldata.size - 4 >= 24736
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require 24740 <= calldata.size
    if arg3 != depositRoot:
        revert with 0, 'Proposed deposit root is invalid'
    if arg5 != Mask(248, 0, lastProcessedDepositLeaf) * 0.00390625:
        revert with 0, 'Incorrect deposit insert index'
    mem[96] = 14404
    mem[64] = 14560
    mem[128 len 14404] = call.data[calldata.size len 14404]
    mem[164] = arg5
    mem[160] = arg4
    mem[128] = arg3
    idx = 0
    while idx < 256:
        require cd[((96 * idx) + 196)] == address(cd[((96 * idx) + 196)])
        require idx < 256
        require cd[((96 * idx) + 228)] == uint32(cd[((96 * idx) + 228)])
        _34 = mem[64]
        mem[mem[64] + 32] = address(cd[((96 * idx) + 196)])
        mem[mem[64] + 64] = cd[((96 * idx) + 164)]
        mem[mem[64] + 96] = uint32(cd[((96 * idx) + 228)])
        _43 = mem[64]
        mem[mem[64]] = 96
        mem[64] = mem[64] + 128
        _45 = sha3(mem[_43 + 32 len mem[_43]])
        if lastProcessedDepositLeaf + idx >= depositsV1Length:
            mem[0] = lastProcessedDepositLeaf + idx
            mem[32] = 59
            if _45 != deposits[stor61 + idx]:
                revert with 0, 'Incorrect deposit'
            mem[(56 * idx) + 220] = cd[((96 * idx) + 228)]
            mem[(56 * idx) + 216] = cd[((96 * idx) + 196)]
            mem[(56 * idx) + 196] = cd[((96 * idx) + 164)]
            if lastProcessedDepositLeaf + idx >= depositsV1Length:
                mem[0] = lastProcessedDepositLeaf + idx
                mem[32] = 59
                deposits[stor61 + idx] = 0
            else:
                mem[_34 + 128] = address(cd[((96 * idx) + 196)])
                mem[_34 + 160] = uint32(cd[((96 * idx) + 228)])
                mem[_34 + 192] = lastProcessedDepositLeaf + idx
                emit DepositData(address(cd[((96 * idx) + 196)]), cd[((96 * idx) + 228)] << 224, lastProcessedDepositLeaf + idx, cd[((96 * idx) + 164)]);
        else:
            mem[_34 + 132] = lastProcessedDepositLeaf + idx
            require ext_code.size(tornadoTreesV1Address)
            staticcall tornadoTreesV1Address.0xb02c43d0 with:
                    gas gas_remaining wei
                   args (lastProcessedDepositLeaf + idx)
            mem[_34 + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _34 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if _45 != ext_call.return_data[0]:
                revert with 0, 'Incorrect deposit'
            mem[(56 * idx) + 220] = cd[((96 * idx) + 228)]
            mem[(56 * idx) + 216] = cd[((96 * idx) + 196)]
            mem[(56 * idx) + 196] = cd[((96 * idx) + 164)]
            if lastProcessedDepositLeaf + idx >= depositsV1Length:
                mem[0] = lastProcessedDepositLeaf + idx
                mem[32] = 59
                deposits[stor61 + idx] = 0
            else:
                mem[_34 + ceil32(return_data.size) + 128] = address(cd[((96 * idx) + 196)])
                mem[_34 + ceil32(return_data.size) + 160] = uint32(cd[((96 * idx) + 228)])
                mem[_34 + ceil32(return_data.size) + 192] = lastProcessedDepositLeaf + idx
                emit DepositData(address(cd[((96 * idx) + 196)]), cd[((96 * idx) + 228)] << 224, lastProcessedDepositLeaf + idx, cd[((96 * idx) + 164)]);
        idx = idx + 1
        continue 
    _26 = mem[96]
    mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_26) <= _26:
        hash = sha256hash(mem[mem[64] len _26]) 
        mem[mem[64]] = hash
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _68 = mem[_65]
        require mem[_65] == mem[_65]
        if mem[_65] % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001 != arg2:
            revert with 0, 'Invalid args hash'
        _70 = mem[64]
        mem[64] = mem[64] + 32
        mem[_70] = _68 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = arg1.length
        mem[mem[64] + 100 len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length + 100] = 0
        mem[mem[64] + 36] = _68 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.0x8d8f8a5c with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=arg1[all]), _68 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_84] == bool(mem[_84])
        if not mem[_84]:
            revert with 0, 'Invalid deposit tree update proof'
    else:
        mem[mem[64] + _26] = 0
        hash = sha256hash(mem[mem[64] len _26]) 
        mem[mem[64]] = hash
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _69 = mem[_67]
        require mem[_67] == mem[_67]
        if mem[_67] % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001 != arg2:
            revert with 0, 'Invalid args hash'
        _73 = mem[64]
        mem[64] = mem[64] + 32
        mem[_73] = _69 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = arg1.length
        mem[mem[64] + 100 len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length + 100] = 0
        mem[mem[64] + 36] = _69 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.0x8d8f8a5c with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=arg1[all]), _69 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_85] == bool(mem[_85])
        if not mem[_85]:
            revert with 0, 'Invalid deposit tree update proof'
    previousDepositRoot = arg3
    depositRoot = arg4
    lastProcessedDepositLeaf += 256
}

function updateWithdrawalTree(bytes arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, uint32 arg5, bytes32 arg6, address arg7, uint32[256] arg8) payable {
    require calldata.size - 4 >= 24736
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require 24740 <= calldata.size
    if arg3 != withdrawalRoot:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Proposed withdrawal root is invalid'
    if arg5 != Mask(248, 0, lastProcessedWithdrawalLeaf) * 0.00390625:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Incorrect withdrawal insert index'
    mem[96] = 14404
    mem[64] = 14560
    mem[128 len 14404] = call.data[calldata.size len 14404]
    mem[164] = arg5
    mem[160] = arg4
    mem[128] = arg3
    idx = 0
    while idx < 256:
        require cd[((96 * idx) + 196)] == address(cd[((96 * idx) + 196)])
        require idx < 256
        require cd[((96 * idx) + 228)] == uint32(cd[((96 * idx) + 228)])
        _34 = mem[64]
        mem[mem[64] + 32] = address(cd[((96 * idx) + 196)])
        mem[mem[64] + 64] = cd[((96 * idx) + 164)]
        mem[mem[64] + 96] = uint32(cd[((96 * idx) + 228)])
        _43 = mem[64]
        mem[mem[64]] = 96
        mem[64] = mem[64] + 128
        _45 = sha3(mem[_43 + 32 len mem[_43]])
        if lastProcessedWithdrawalLeaf + idx >= withdrawalsV1Length:
            mem[0] = lastProcessedWithdrawalLeaf + idx
            mem[32] = 63
            if _45 != withdrawals[stor65 + idx]:
                revert with 0, 'Incorrect withdrawal'
            mem[(56 * idx) + 220] = cd[((96 * idx) + 228)]
            mem[(56 * idx) + 216] = cd[((96 * idx) + 196)]
            mem[(56 * idx) + 196] = cd[((96 * idx) + 164)]
            if lastProcessedWithdrawalLeaf + idx >= withdrawalsV1Length:
                mem[0] = lastProcessedWithdrawalLeaf + idx
                mem[32] = 63
                withdrawals[stor65 + idx] = 0
            else:
                mem[_34 + 128] = address(cd[((96 * idx) + 196)])
                mem[_34 + 160] = uint32(cd[((96 * idx) + 228)])
                mem[_34 + 192] = lastProcessedWithdrawalLeaf + idx
                emit WithdrawalData(address(cd[((96 * idx) + 196)]), cd[((96 * idx) + 228)] << 224, lastProcessedWithdrawalLeaf + idx, cd[((96 * idx) + 164)]);
        else:
            mem[_34 + 132] = lastProcessedWithdrawalLeaf + idx
            require ext_code.size(tornadoTreesV1Address)
            staticcall tornadoTreesV1Address.0x5cc07076 with:
                    gas gas_remaining wei
                   args (lastProcessedWithdrawalLeaf + idx)
            mem[_34 + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _34 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if _45 != ext_call.return_data[0]:
                revert with 0, 'Incorrect withdrawal'
            mem[(56 * idx) + 220] = cd[((96 * idx) + 228)]
            mem[(56 * idx) + 216] = cd[((96 * idx) + 196)]
            mem[(56 * idx) + 196] = cd[((96 * idx) + 164)]
            if lastProcessedWithdrawalLeaf + idx >= withdrawalsV1Length:
                mem[0] = lastProcessedWithdrawalLeaf + idx
                mem[32] = 63
                withdrawals[stor65 + idx] = 0
            else:
                mem[_34 + ceil32(return_data.size) + 128] = address(cd[((96 * idx) + 196)])
                mem[_34 + ceil32(return_data.size) + 160] = uint32(cd[((96 * idx) + 228)])
                mem[_34 + ceil32(return_data.size) + 192] = lastProcessedWithdrawalLeaf + idx
                emit WithdrawalData(address(cd[((96 * idx) + 196)]), cd[((96 * idx) + 228)] << 224, lastProcessedWithdrawalLeaf + idx, cd[((96 * idx) + 164)]);
        idx = idx + 1
        continue 
    _26 = mem[96]
    mem[mem[64] len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(_26) <= _26:
        hash = sha256hash(mem[mem[64] len _26]) 
        mem[mem[64]] = hash
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _68 = mem[_65]
        require mem[_65] == mem[_65]
        if mem[_65] % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001 != arg2:
            revert with 0, 'Invalid args hash'
        _70 = mem[64]
        mem[64] = mem[64] + 32
        mem[_70] = _68 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = arg1.length
        mem[mem[64] + 100 len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length + 100] = 0
        mem[mem[64] + 36] = _68 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.0x8d8f8a5c with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=arg1[all]), _68 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _84 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_84] == bool(mem[_84])
        if not mem[_84]:
            revert with 0, 'Invalid withdrawal tree update proof'
    else:
        mem[mem[64] + _26] = 0
        hash = sha256hash(mem[mem[64] len _26]) 
        mem[mem[64]] = hash
        if not sha256hash.result:
            revert with ext_call.return_data[0 len return_data.size]
        _67 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _69 = mem[_67]
        require mem[_67] == mem[_67]
        if mem[_67] % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001 != arg2:
            revert with 0, 'Invalid args hash'
        _73 = mem[64]
        mem[64] = mem[64] + 32
        mem[_73] = _69 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        mem[mem[64] + 4] = 64
        mem[mem[64] + 68] = arg1.length
        mem[mem[64] + 100 len arg1.length] = arg1[all]
        mem[mem[64] + arg1.length + 100] = 0
        mem[mem[64] + 36] = _69 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        require ext_code.size(treeUpdateVerifierAddress)
        staticcall treeUpdateVerifierAddress.0x8d8f8a5c with:
                gas gas_remaining wei
               args Array(len=arg1.length, data=arg1[all]), _69 % 0x30644e72e131a029b85045b68181585d2833e84879b9709143e1f593f0000001
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _85 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_85] == bool(mem[_85])
        if not mem[_85]:
            revert with 0, 'Invalid withdrawal tree update proof'
    previousWithdrawalRoot = arg3
    withdrawalRoot = arg4
    lastProcessedWithdrawalLeaf += 256
}



}
