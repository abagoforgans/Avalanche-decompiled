contract main {




// =====================  Runtime code  =====================


const DENOMINATOR = 10000


mapping of struct oldQuotaMap;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint8 stor8;
address depositOracleAddress;
address priceOracleAddress;
uint256 depositRate;
array of uint256 depositTokenSymbol;
address tokenManagerAddress;
address debtOracleAddress;
uint256 fastCrossMinValue;
address owner;
uint8 halted; offset 160
uint128 stor17; offset 160
address newOwner;
address implementationAddress;
mapping of struct quotaMap;
mapping of uint256 tokenId;
mapping of uint256 tokenCount;
uint256 version;

function getOldQuotaMap(uint256 arg1, bytes32 arg2) {
    return oldQuotaMap[arg1][arg2].field_0, 
           oldQuotaMap[arg1][arg2].field_256,
           oldQuotaMap[arg1][arg2].field_512,
           oldQuotaMap[arg1][arg2].field_768,
           oldQuotaMap[arg1][arg2].field_1024,
           oldQuotaMap[arg1][arg2].field_1280,
           bool(oldQuotaMap[arg1][arg2].field_1536)
}

function priceOracleAddress() {
    return priceOracleAddress
}

function getQuotaMap(uint256 arg1, bytes32 arg2) {
    return quotaMap[arg1][arg2].field_0, 
           quotaMap[arg1][arg2].field_256,
           quotaMap[arg1][arg2].field_512,
           quotaMap[arg1][arg2].field_768,
           quotaMap[arg1][arg2].field_1024,
           quotaMap[arg1][arg2].field_1280,
           bool(quotaMap[arg1][arg2].field_1536)
}

function depositOracleAddress() {
    return depositOracleAddress
}

function version() {
    return version
}

function implementation() {
    return implementationAddress
}

function fastCrossMinValue() {
    return fastCrossMinValue
}

function getTokenId(bytes32 arg1, uint256 arg2) {
    return tokenId[arg1][arg2]
}

function depositRate() {
    return depositRate
}

function owner() {
    return owner
}

function debtOracleAddress() {
    return debtOracleAddress
}

function getTokenCount(bytes32 arg1) {
    return tokenCount[arg1]
}

function halted() {
    return bool(halted)
}

function tokenManagerAddress() {
    return tokenManagerAddress
}

function newOwner() {
    return newOwner
}

function depositTokenSymbol() {
    return depositTokenSymbol[0 len depositTokenSymbol.length]
}

function htlcGroupMap(address arg1) {
    return bool(stor8[arg1])
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    owner = 0
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    newOwner = arg1
}

function setHalt(bool arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    stor17 = Mask(96, 0, arg1)
}

function setDebtOracle(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    debtOracleAddress = arg1
}

function setFastCrossMinValue(uint256 arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    fastCrossMinValue = arg1
}

function adjustSmgQuota(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    quotaMap[arg2][arg1].field_1280 = arg3
    quotaMap[arg2][arg1].field_512 = arg4
}

function transferOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0, 'New owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function stringToBytes32(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if not arg1.length:
        return 0
    mem[ceil32(arg1.length) + 128] = mem[128]
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function _fallback() payable {
    if not implementationAddress:
        revert with 0, 'implementation contract not set'
    delegate implementationAddress with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function upgradeTo(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot upgrade to invalid address'
    if implementationAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot upgrade to the same implementation'
    implementationAddress = arg1
    emit Upgraded(arg1);
}

function config(address arg1, address arg2, address arg3, address arg4, address arg5, uint256 arg6, string arg7) {
    if owner != msg.sender:
        revert with 0, 'Not owner'
    priceOracleAddress = arg1
    stor8[address(arg2)] = 1
    stor8[arg3] = 1
    depositOracleAddress = arg4
    depositRate = arg6
    depositTokenSymbol.length = (2 * arg7.length) + 1
    s = 0
    idx = arg7 + 36
    while arg7 + arg7.length + 36 > idx:
        depositTokenSymbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg7.length + 31) >> 5
    while depositTokenSymbol.length + 31 / 32 > idx:
        depositTokenSymbol[idx] = 0
        idx = idx + 1
        continue 
    tokenManagerAddress = arg5
}

function receiveDebt(bytes32 arg1, bytes32 arg2) {
    if not stor8[msg.sender]:
        revert with 0, 'Not in HTLC group'
    s = 0
    s = 0
    idx = 0
    while idx < tokenCount[arg1]:
        mem[0] = arg1
        mem[32] = sha3(tokenId[arg1][idx], 19)
        if quotaMap[stor20[arg1][idx]][arg1].field_512:
            mem[0] = arg2
            mem[32] = sha3(tokenId[arg1][idx], 19)
            if not quotaMap[stor20[arg1][idx]][arg2].field_1536:
                quotaMap[stor20[arg1][idx]][arg2].field_1536 = 1
                tokenId[arg2][stor21[arg2]] = tokenId[arg1][idx]
                if tokenCount[arg2] + 1 < tokenCount[arg2]:
                    revert with 0, 'SafeMath add overflow'
                mem[0] = arg2
                mem[32] = 21
                tokenCount[arg2]++
            if quotaMap[stor20[arg1][idx]][arg1].field_512 + quotaMap[stor20[arg1][idx]][arg2].field_512 < quotaMap[stor20[arg1][idx]][arg2].field_512:
                revert with 0, 'SafeMath add overflow'
            quotaMap[stor20[arg1][idx]][arg2].field_512 += quotaMap[stor20[arg1][idx]][arg1].field_512
            mem[96] = tokenId[arg1][idx]
            mem[128] = quotaMap[stor20[arg1][idx]][arg1].field_512
            emit DebtReceived(tokenId[arg1][idx], quotaMap[stor20[arg1][idx]][arg1].field_512, arg1, arg2);
            quotaMap[stor20[arg1][idx]][arg1].field_256 = 0
            quotaMap[stor20[arg1][idx]][arg1].field_512 = 0
        s = sha3(arg1, sha3(tokenId[arg1][idx], 19))
        s = tokenId[arg1][idx]
        idx = idx + 1
        continue 
}

function transferAsset(bytes32 arg1, bytes32 arg2) {
    if not stor8[msg.sender]:
        revert with 0, 'Not in HTLC group'
    s = 0
    s = 0
    idx = 0
    while idx < tokenCount[arg1]:
        mem[0] = arg1
        mem[32] = sha3(tokenId[arg1][idx], 19)
        if quotaMap[stor20[arg1][idx]][arg1].field_1280:
            mem[0] = arg2
            mem[32] = sha3(tokenId[arg1][idx], 19)
            if not quotaMap[stor20[arg1][idx]][arg2].field_1536:
                quotaMap[stor20[arg1][idx]][arg2].field_1536 = 1
                tokenId[arg2][stor21[arg2]] = tokenId[arg1][idx]
                if tokenCount[arg2] + 1 < tokenCount[arg2]:
                    revert with 0, 'SafeMath add overflow'
                mem[0] = arg2
                mem[32] = 21
                tokenCount[arg2]++
            if quotaMap[stor20[arg1][idx]][arg1].field_1280 + quotaMap[stor20[arg1][idx]][arg2].field_1280 < quotaMap[stor20[arg1][idx]][arg2].field_1280:
                revert with 0, 'SafeMath add overflow'
            quotaMap[stor20[arg1][idx]][arg2].field_1280 += quotaMap[stor20[arg1][idx]][arg1].field_1280
            mem[96] = tokenId[arg1][idx]
            mem[128] = quotaMap[stor20[arg1][idx]][arg1].field_1280
            emit AssetTransfered(tokenId[arg1][idx], quotaMap[stor20[arg1][idx]][arg1].field_1280, arg1, arg2);
            quotaMap[stor20[arg1][idx]][arg1].field_1024 = 0
            quotaMap[stor20[arg1][idx]][arg1].field_1280 = 0
        s = sha3(arg1, sha3(tokenId[arg1][idx], 19))
        s = tokenId[arg1][idx]
        idx = idx + 1
        continue 
}

function isDebtClean(bytes32 arg1) {
    if tokenCount[arg1]:
        s = 0
        s = 0
        idx = 0
        while idx < tokenCount[arg1]:
            mem[0] = arg1
            mem[32] = sha3(tokenId[arg1][idx], 19)
            if quotaMap[stor20[arg1][idx]][arg1].field_512 <= 0:
                if quotaMap[stor20[arg1][idx]][arg1].field_256 <= 0:
                    if 0 >= quotaMap[stor20[arg1][idx]][arg1].field_0:
                        if quotaMap[stor20[arg1][idx]][arg1].field_1280 <= 0:
                            if quotaMap[stor20[arg1][idx]][arg1].field_1024 <= 0:
                                if quotaMap[stor20[arg1][idx]][arg1].field_768 <= 0:
                                    s = sha3(arg1, sha3(tokenId[arg1][idx], 19))
                                    s = tokenId[arg1][idx]
                                    idx = idx + 1
                                    continue 
                                else:
                                    return 0
                            else:
                                return 0
                        else:
                            return 0
                    else:
                        return 0
                else:
                    return 0
            else:
                return 0
        return 1
    if not debtOracleAddress:
        return 1
    require ext_code.size(debtOracleAddress)
    call debtOracleAddress.0x5d8026c5 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getTokenKey(uint256 arg1) {
    mem[96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0xe101d3c1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    _6 = uint32(arg1), mem[132 len 28]
    _8 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
    mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
    mem[ceil32(return_data.size) + _8 + 128] = uint8(_6)
    mem[ceil32(return_data.size) + _8 + 160 len floor32(_8 + 32)] = mem[ceil32(return_data.size) + 128 len floor32(_8 + 32)]
    mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160] = mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160] and 256^(-(_8 + 32 % 32) + 32) - 1 or mem[ceil32(return_data.size) + floor32(_8 + 32) + 128] and !(256^(-(_8 + 32 % 32) + 32) - 1)
    return sha3(mem[ceil32(return_data.size) + 128 len floor32(_8 + 32)], mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160 len _8 + -floor32(_8 + 32) + 32])
}

function getTokenQuota(string arg1, uint256 arg2, bytes32 arg3) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 160] = arg2
    mem[ceil32(arg1.length) + arg1.length + 192 len floor32(arg1.length + 32)] = call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len floor32(arg1.length + 32) - floor32(arg1.length)]
    mem[ceil32(arg1.length) + arg1.length + floor32(arg1.length + 32) + -(arg1.length + 32 % 32) + 224 len arg1.length + 32 % 32] = mem[ceil32(arg1.length) + floor32(arg1.length + 32) + -(arg1.length + 32 % 32) + 192 len arg1.length + 32 % 32]
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len floor32(arg1.length + 32) - floor32(arg1.length)], mem[ceil32(arg1.length) + arg1.length + floor32(arg1.length + 32) + 192 len arg1.length + -floor32(arg1.length + 32) + 32])
    mem[ceil32(arg1.length) + arg1.length + 192] = quotaMap[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len floor32(arg1.length + 32) - floor32(arg1.length)]][mem[ceil32(arg1.length) + arg1.length + floor32(arg1.length + 32) + 192 len arg1.length + -floor32(arg1.length + 32) + 32]][arg3].field_0
    mem[ceil32(arg1.length) + arg1.length + 224] = quotaMap[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len floor32(arg1.length + 32) - floor32(arg1.length)]][mem[ceil32(arg1.length) + arg1.length + floor32(arg1.length + 32) + 192 len arg1.length + -floor32(arg1.length + 32) + 32]][arg3].field_256
    return mem[ceil32(arg1.length) + arg1.length + 192 len 64], 
           quotaMap[mem[0]][arg3].field_512,
           quotaMap[mem[0]][arg3].field_768,
           quotaMap[mem[0]][arg3].field_1024,
           quotaMap[mem[0]][arg3].field_1280,
           bool(quotaMap[mem[0]][arg3].field_1536)
}

function smgRelease(uint256 arg1, bytes32 arg2, uint256 arg3) {
    mem[0] = msg.sender
    mem[32] = 8
    if not stor8[msg.sender]:
        revert with 0, 'Not in HTLC group'
    mem[96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0xe101d3c1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    _11 = uint32(arg1), mem[132 len 28]
    _13 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
    mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
    mem[ceil32(return_data.size) + _13 + 128] = uint8(_11)
    mem[ceil32(return_data.size) + _13 + 160 len floor32(_13 + 32)] = mem[ceil32(return_data.size) + 128 len floor32(_13 + 32)]
    mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160] = mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160] and 256^(-(_13 + 32 % 32) + 32) - 1 or mem[ceil32(return_data.size) + floor32(_13 + 32) + 128] and !(256^(-(_13 + 32 % 32) + 32) - 1)
    if arg3 > quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_13 + 32)]][mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160 len _13 + -floor32(_13 + 32) + 32]][arg2].field_1280:
        revert with 0, 'SafeMath sub b > a'
    quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_13 + 32)]][mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160 len _13 + -floor32(_13 + 32) + 32]][arg2].field_1280 -= arg3
}

function getDebt(uint256 arg1, bytes32 arg2) {
    mem[96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0xe101d3c1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    _6 = uint32(arg1), mem[132 len 28]
    _8 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
    mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
    mem[ceil32(return_data.size) + _8 + 128] = uint8(_6)
    mem[ceil32(return_data.size) + _8 + 160 len floor32(_8 + 32)] = mem[ceil32(return_data.size) + 128 len floor32(_8 + 32)]
    mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160] = mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160] and 256^(-(_8 + 32 % 32) + 32) - 1 or mem[ceil32(return_data.size) + floor32(_8 + 32) + 128] and !(256^(-(_8 + 32 % 32) + 32) - 1)
    mem[0] = sha3(mem[ceil32(return_data.size) + 128 len floor32(_8 + 32)], mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160 len _8 + -floor32(_8 + 32) + 32])
    mem[ceil32(return_data.size) + _8 + 160] = quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_8 + 32)]][mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160 len _8 + -floor32(_8 + 32) + 32]][arg2].field_512
    mem[ceil32(return_data.size) + _8 + 192] = quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_8 + 32)]][mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160 len _8 + -floor32(_8 + 32) + 32]][arg2].field_0
    return mem[ceil32(return_data.size) + _8 + 160 len 64], quotaMap[mem[0]][arg2].field_256
}

function getAsset(uint256 arg1, bytes32 arg2) {
    mem[96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0xe101d3c1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    _6 = uint32(arg1), mem[132 len 28]
    _8 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
    mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
    mem[ceil32(return_data.size) + _8 + 128] = uint8(_6)
    mem[ceil32(return_data.size) + _8 + 160 len floor32(_8 + 32)] = mem[ceil32(return_data.size) + 128 len floor32(_8 + 32)]
    mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160] = mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160] and 256^(-(_8 + 32 % 32) + 32) - 1 or mem[ceil32(return_data.size) + floor32(_8 + 32) + 128] and !(256^(-(_8 + 32 % 32) + 32) - 1)
    mem[0] = sha3(mem[ceil32(return_data.size) + 128 len floor32(_8 + 32)], mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160 len _8 + -floor32(_8 + 32) + 32])
    mem[ceil32(return_data.size) + _8 + 160] = quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_8 + 32)]][mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160 len _8 + -floor32(_8 + 32) + 32]][arg2].field_1280
    mem[ceil32(return_data.size) + _8 + 192] = quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_8 + 32)]][mem[ceil32(return_data.size) + _8 + floor32(_8 + 32) + 160 len _8 + -floor32(_8 + 32) + 32]][arg2].field_768
    return mem[ceil32(return_data.size) + _8 + 160 len 64], quotaMap[mem[0]][arg2].field_1024
}

function smgMint(uint256 arg1, bytes32 arg2, uint256 arg3) {
    mem[0] = msg.sender
    mem[32] = 8
    if not stor8[msg.sender]:
        revert with 0, 'Not in HTLC group'
    mem[96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0xe101d3c1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    _11 = uint32(arg1), mem[132 len 28]
    _13 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
    mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
    mem[ceil32(return_data.size) + _13 + 128] = uint8(_11)
    mem[ceil32(return_data.size) + _13 + 160 len floor32(_13 + 32)] = mem[ceil32(return_data.size) + 128 len floor32(_13 + 32)]
    mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160] = mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160] and 256^(-(_13 + 32 % 32) + 32) - 1 or mem[ceil32(return_data.size) + floor32(_13 + 32) + 128] and !(256^(-(_13 + 32 % 32) + 32) - 1)
    if not quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_13 + 32)]][mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160 len _13 + -floor32(_13 + 32) + 32]][arg2].field_1536:
        quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_13 + 32)]][mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160 len _13 + -floor32(_13 + 32) + 32]][arg2].field_1536 = 1
        tokenId[arg2][stor21[arg2]] = sha3(mem[ceil32(return_data.size) + 128 len floor32(_13 + 32)], mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160 len _13 + -floor32(_13 + 32) + 32])
        if tokenCount[arg2] + 1 < tokenCount[arg2]:
            revert with 0, 'SafeMath add overflow'
        tokenCount[arg2]++
    if arg3 + quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_13 + 32)]][mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160 len _13 + -floor32(_13 + 32) + 32]][arg2].field_512 < quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_13 + 32)]][mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160 len _13 + -floor32(_13 + 32) + 32]][arg2].field_512:
        revert with 0, 'SafeMath add overflow'
    quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_13 + 32)]][mem[ceil32(return_data.size) + _13 + floor32(_13 + 32) + 160 len _13 + -floor32(_13 + 32) + 32]][arg2].field_512 += arg3
}

function upgrade(bytes32[] arg1) payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'Not owner'
    if 2 <= version:
        revert with 0, 'Can upgrade again.'
    version = 2
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 7
        s = 0
        t = 0
        t = 0
        u = 0
        u = 0
        u = 0
        u = 0
        u = 0
        while u < stor7[cd[((32 * idx) + arg1 + 36)]]:
            mem[0] = u
            mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 6)
            mem[mem[64]] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor6[cd[((32 * idx) + arg1 + 36)]][u]
            require ext_code.size(tokenManagerAddress)
            call tokenManagerAddress.0xe101d3c1 with:
                 gas gas_remaining wei
                args stor6[cd[((32 * idx) + arg1 + 36)]][u]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _153 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 64
            require mem[_153] <= 4294967296
            require mem[_153] + 32 <= return_data.size
            require return_data.size >= mem[_153 + mem[_153]] + mem[_153] + 32 and mem[_153 + mem[_153]] <= 4294967296
            _156 = mem[_153 + 32]
            _158 = mem[_153 + mem[_153]]
            w = _153 + mem[_153] + 32
            x = _153 + ceil32(return_data.size) + 32
            v = mem[_153 + mem[_153]]
            while v >= 32:
                mem[x] = mem[w]
                w = w + 32
                x = x + 32
                v = v - 32
                continue 
            mem[_153 + ceil32(return_data.size) + floor32(mem[_153 + mem[_153]]) + 32] = 256^(-(mem[_153 + mem[_153]] % 32) + 32) - 1 and mem[_153 + ceil32(return_data.size) + floor32(mem[_153 + mem[_153]]) + 32] or mem[_153 + mem[_153] + floor32(mem[_153 + mem[_153]]) + 32] and !(256^(-(mem[_153 + mem[_153]] % 32) + 32) - 1)
            mem[_153 + ceil32(return_data.size) + _158 + 32] = uint8(_156)
            mem[_153 + ceil32(return_data.size)] = _158 + 32
            mem[64] = _153 + ceil32(return_data.size) + _158 + 64
            w = _153 + ceil32(return_data.size) + 32
            x = _153 + ceil32(return_data.size) + _158 + 64
            v = _158 + 32
            while v >= 32:
                mem[x] = mem[w]
                w = w + 32
                x = x + 32
                v = v - 32
                continue 
            mem[_153 + ceil32(return_data.size) + _158 + floor32(_158 + 32) + 64] = mem[_153 + ceil32(return_data.size) + _158 + floor32(_158 + 32) + 64] and 256^(-(_158 + 32 % 32) + 32) - 1 or mem[_153 + ceil32(return_data.size) + floor32(_158 + 32) + 32] and !(256^(-(_158 + 32 % 32) + 32) - 1)
            _282 = sha3(mem[mem[64] len _153 + ceil32(return_data.size) + (2 * _158) + -mem[64] + 96])
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(stor6[cd[((32 * idx) + arg1 + 36)]][u], 5)
            if oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_512 <= 0:
                if oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_1280 <= 0:
                    s = s
                    t = oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_1280
                    t = t
                    u = oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_512
                    u = sha3(cd[((32 * idx) + arg1 + 36)], sha3(stor6[cd[((32 * idx) + arg1 + 36)]][u], 5))
                    u = _282
                    u = stor6[cd[((32 * idx) + arg1 + 36)]][u]
                    u = u + 1
                    continue 
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = sha3(_282, 19)
                if not quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1536:
                    quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1536 = 1
                    tokenId[cd[((32 * idx) + arg1 + 36)]][stor21[cd[((32 * idx) + arg1 + 36)]]] = _282
                    if tokenCount[cd[((32 * idx) + arg1 + 36)]] + 1 < tokenCount[cd[((32 * idx) + arg1 + 36)]]:
                        revert with 0, 'SafeMath add overflow'
                    mem[0] = cd[((32 * idx) + arg1 + 36)]
                    mem[32] = 21
                    tokenCount[cd[((32 * idx) + arg1 + 36)]]++
                if oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_1280 + quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1280 < quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1280:
                    revert with 0, 'SafeMath add overflow'
                quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1280 += oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_1280
                s = sha3(cd[((32 * idx) + arg1 + 36)], sha3(_282, 19))
                t = oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_1280
                t = t
                u = oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_512
                u = sha3(cd[((32 * idx) + arg1 + 36)], sha3(stor6[cd[((32 * idx) + arg1 + 36)]][u], 5))
                u = _282
                u = stor6[cd[((32 * idx) + arg1 + 36)]][u]
                u = u + 1
                continue 
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(_282, 19)
            if not quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1536:
                quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1536 = 1
                tokenId[cd[((32 * idx) + arg1 + 36)]][stor21[cd[((32 * idx) + arg1 + 36)]]] = _282
                if tokenCount[cd[((32 * idx) + arg1 + 36)]] + 1 < tokenCount[cd[((32 * idx) + arg1 + 36)]]:
                    revert with 0, 'SafeMath add overflow'
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 21
                tokenCount[cd[((32 * idx) + arg1 + 36)]]++
            if oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_512 + quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_512 < quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_512:
                revert with 0, 'SafeMath add overflow'
            quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_512 += oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_512
            if oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_1280 <= 0:
                s = s
                t = oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_1280
                t = sha3(cd[((32 * idx) + arg1 + 36)], sha3(_282, 19))
                u = oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_512
                u = sha3(cd[((32 * idx) + arg1 + 36)], sha3(stor6[cd[((32 * idx) + arg1 + 36)]][u], 5))
                u = _282
                u = stor6[cd[((32 * idx) + arg1 + 36)]][u]
                u = u + 1
                continue 
            mem[0] = cd[((32 * idx) + arg1 + 36)]
            mem[32] = sha3(_282, 19)
            if not quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1536:
                quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1536 = 1
                tokenId[cd[((32 * idx) + arg1 + 36)]][stor21[cd[((32 * idx) + arg1 + 36)]]] = _282
                if tokenCount[cd[((32 * idx) + arg1 + 36)]] + 1 < tokenCount[cd[((32 * idx) + arg1 + 36)]]:
                    revert with 0, 'SafeMath add overflow'
                mem[0] = cd[((32 * idx) + arg1 + 36)]
                mem[32] = 21
                tokenCount[cd[((32 * idx) + arg1 + 36)]]++
            if oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_1280 + quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1280 < quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1280:
                revert with 0, 'SafeMath add overflow'
            quotaMap[_282][cd[((32 * idx) + arg1 + 36)]].field_1280 += oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_1280
            s = sha3(cd[((32 * idx) + arg1 + 36)], sha3(_282, 19))
            t = oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_1280
            t = sha3(cd[((32 * idx) + arg1 + 36)], sha3(_282, 19))
            u = oldQuotaMap[stor6[cd[((32 * idx) + arg1 + 36)]][u]][cd[((32 * idx) + arg1 + 36)]].field_512
            u = sha3(cd[((32 * idx) + arg1 + 36)], sha3(stor6[cd[((32 * idx) + arg1 + 36)]][u], 5))
            u = _282
            u = stor6[cd[((32 * idx) + arg1 + 36)]][u]
            u = u + 1
            continue 
        s = stor7[cd[((32 * idx) + arg1 + 36)]]
        s = cd[((32 * idx) + arg1 + 36)]
        idx = idx + 1
        continue 
}

function getFastMinCount(uint256 arg1) {
    if 0 == fastCrossMinValue:
        return 0, 160, 0, 0, 0, 0
    mem[96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0xe101d3c1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    _8 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    _14 = uint32(arg1), mem[132 len 28]
    require ext_code.size(priceOracleAddress)
    if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]:
        call priceOracleAddress.getValue(bytes32 rg1) with:
             gas gas_remaining wei
            args mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            mem[ceil32(return_data.size) + 96] = fastCrossMinValue
            mem[ceil32(return_data.size) + 160] = uint8(_14)
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 224] = 0
            mem[ceil32(return_data.size) + 128] = 160
            mem[ceil32(return_data.size) + 256] = mem[_8 + 96]
            _27 = mem[_8 + 96]
            mem[ceil32(return_data.size) + 288 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
            if not _27 % 32:
                return fastCrossMinValue, 160, _14 << 248, ext_call.return_data[0], 0, mem[ceil32(return_data.size) + 256 len _27 + 32]
            mem[floor32(_27) + ceil32(return_data.size) + 288] = mem[floor32(_27) + ceil32(return_data.size) + -(_27 % 32) + 320 len _27 % 32]
            return fastCrossMinValue, 
                   160,
                   _14 << 248,
                   ext_call.return_data[0],
                   0,
                   mem[ceil32(return_data.size) + 256 len floor32(_27) + 64]
        if not fastCrossMinValue:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath div 0'
            require ext_call.return_data[0]
            mem[ceil32(return_data.size) + 96] = fastCrossMinValue
            mem[ceil32(return_data.size) + 160] = uint8(_14)
            mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
            mem[ceil32(return_data.size) + 224] = 0 / ext_call.return_data[0]
            mem[ceil32(return_data.size) + 128] = 160
            mem[ceil32(return_data.size) + 256] = mem[_8 + 96]
            _53 = mem[_8 + 96]
            mem[ceil32(return_data.size) + 288 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
            if not _53 % 32:
                return fastCrossMinValue, 
                       160,
                       _14 << 248,
                       ext_call.return_data[0],
                       0 / ext_call.return_data[0],
                       mem[ceil32(return_data.size) + 256 len _53 + 32]
            mem[floor32(_53) + ceil32(return_data.size) + 288] = mem[floor32(_53) + ceil32(return_data.size) + -(_53 % 32) + 320 len _53 % 32]
            return fastCrossMinValue, 
                   160,
                   _14 << 248,
                   ext_call.return_data[0],
                   0 / ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len floor32(_53) + 64]
        if 10^mem[159 len 1] * fastCrossMinValue / fastCrossMinValue != 10^mem[159 len 1]:
            revert with 0, 'SafeMath mul overflow'
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath div 0'
        require ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = fastCrossMinValue
        mem[ceil32(return_data.size) + 160] = uint8(_14)
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 224] = 10^uint8(_14) * fastCrossMinValue / ext_call.return_data[0]
        mem[ceil32(return_data.size) + 128] = 160
        mem[ceil32(return_data.size) + 256] = mem[_8 + 96]
        _59 = mem[_8 + 96]
        mem[ceil32(return_data.size) + 288 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
        if not _59 % 32:
            return fastCrossMinValue, 
                   160,
                   _14 << 248,
                   ext_call.return_data[0],
                   10^uint8(_14) * fastCrossMinValue / ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len _59 + 32]
        mem[floor32(_59) + ceil32(return_data.size) + 288] = mem[floor32(_59) + ceil32(return_data.size) + -(_59 % 32) + 320 len _59 % 32]
        return fastCrossMinValue, 
               160,
               _14 << 248,
               ext_call.return_data[0],
               10^uint8(_14) * fastCrossMinValue / ext_call.return_data[0],
               mem[ceil32(return_data.size) + 256 len floor32(_59) + 64]
    call priceOracleAddress.getValue(bytes32 rg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        mem[ceil32(return_data.size) + 96] = fastCrossMinValue
        mem[ceil32(return_data.size) + 160] = uint8(_14)
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 224] = 0
        mem[ceil32(return_data.size) + 128] = 160
        mem[ceil32(return_data.size) + 256] = mem[_8 + 96]
        _30 = mem[_8 + 96]
        mem[ceil32(return_data.size) + 288 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
        if not _30 % 32:
            return fastCrossMinValue, 160, _14 << 248, ext_call.return_data[0], 0, mem[ceil32(return_data.size) + 256 len _30 + 32]
        mem[floor32(_30) + ceil32(return_data.size) + 288] = mem[floor32(_30) + ceil32(return_data.size) + -(_30 % 32) + 320 len _30 % 32]
        return fastCrossMinValue, 
               160,
               _14 << 248,
               ext_call.return_data[0],
               0,
               mem[ceil32(return_data.size) + 256 len floor32(_30) + 64]
    if not fastCrossMinValue:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath div 0'
        require ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = fastCrossMinValue
        mem[ceil32(return_data.size) + 160] = uint8(_14)
        mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 224] = 0 / ext_call.return_data[0]
        mem[ceil32(return_data.size) + 128] = 160
        mem[ceil32(return_data.size) + 256] = mem[_8 + 96]
        _56 = mem[_8 + 96]
        mem[ceil32(return_data.size) + 288 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
        if not _56 % 32:
            return fastCrossMinValue, 
                   160,
                   _14 << 248,
                   ext_call.return_data[0],
                   0 / ext_call.return_data[0],
                   mem[ceil32(return_data.size) + 256 len _56 + 32]
        mem[floor32(_56) + ceil32(return_data.size) + 288] = mem[floor32(_56) + ceil32(return_data.size) + -(_56 % 32) + 320 len _56 % 32]
        return fastCrossMinValue, 
               160,
               _14 << 248,
               ext_call.return_data[0],
               0 / ext_call.return_data[0],
               mem[ceil32(return_data.size) + 256 len floor32(_56) + 64]
    if 10^mem[159 len 1] * fastCrossMinValue / fastCrossMinValue != 10^mem[159 len 1]:
        revert with 0, 'SafeMath mul overflow'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath div 0'
    require ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = fastCrossMinValue
    mem[ceil32(return_data.size) + 160] = uint8(_14)
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 224] = 10^uint8(_14) * fastCrossMinValue / ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = 160
    mem[ceil32(return_data.size) + 256] = mem[_8 + 96]
    _63 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 288 len ceil32(mem[_8 + 96])] = mem[_8 + 128 len ceil32(mem[_8 + 96])]
    if not _63 % 32:
        return fastCrossMinValue, 
               160,
               _14 << 248,
               ext_call.return_data[0],
               10^uint8(_14) * fastCrossMinValue / ext_call.return_data[0],
               mem[ceil32(return_data.size) + 256 len _63 + 32]
    mem[floor32(_63) + ceil32(return_data.size) + 288] = mem[floor32(_63) + ceil32(return_data.size) + -(_63 % 32) + 320 len _63 % 32]
    return fastCrossMinValue, 
           160,
           _14 << 248,
           ext_call.return_data[0],
           10^uint8(_14) * fastCrossMinValue / ext_call.return_data[0],
           mem[ceil32(return_data.size) + 256 len floor32(_63) + 64]
}

function userBurn(uint256 arg1, bytes32 arg2, uint256 arg3) {
    mem[0] = msg.sender
    mem[32] = 8
    if not stor8[msg.sender]:
        revert with 0, 'Not in HTLC group'
    mem[96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0xe101d3c1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    if fastCrossMinValue <= 0:
        _17 = uint32(arg1), mem[132 len 28]
        _19 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
        mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
        mem[ceil32(return_data.size) + _19 + 128] = uint8(_17)
        mem[ceil32(return_data.size) + _19 + 160 len floor32(_19 + 32)] = mem[ceil32(return_data.size) + 128 len floor32(_19 + 32)]
        mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160] = mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160] and 256^(-(_19 + 32 % 32) + 32) - 1 or mem[ceil32(return_data.size) + floor32(_19 + 32) + 128] and !(256^(-(_19 + 32 % 32) + 32) - 1)
        if arg3 > quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_19 + 32)]][mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160 len _19 + -floor32(_19 + 32) + 32]][arg2].field_512:
            revert with 0, 'SafeMath sub b > a'
        quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_19 + 32)]][mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160 len _19 + -floor32(_19 + 32) + 32]][arg2].field_512 -= arg3
    else:
        require ext_code.size(priceOracleAddress)
        if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]:
            call priceOracleAddress.getValue(bytes32 rg1) with:
                 gas gas_remaining wei
                args mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = arg1
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0xe101d3c1 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                _62 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                _69 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                mem[(2 * ceil32(return_data.size)) + _69 + 128] = uint8(_62)
                mem[(2 * ceil32(return_data.size)) + _69 + 160 len floor32(_69 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(_69 + 32)]
                mem[(2 * ceil32(return_data.size)) + _69 + floor32(_69 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _69 + floor32(_69 + 32) + 160] and 256^(-(_69 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(_69 + 32) + 128] and !(256^(-(_69 + 32 % 32) + 32) - 1)
                if arg3 > quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_69 + 32)]][mem[(2 * ceil32(return_data.size)) + _69 + floor32(_69 + 32) + 160 len _69 + -floor32(_69 + 32) + 32]][arg2].field_512:
                    revert with 0, 'SafeMath sub b > a'
                quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_69 + 32)]][mem[(2 * ceil32(return_data.size)) + _69 + floor32(_69 + 32) + 160 len _69 + -floor32(_69 + 32) + 32]][arg2].field_512 -= arg3
            else:
                if not fastCrossMinValue:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath div 0'
                    require ext_call.return_data[0]
                    if arg3 < 0 / ext_call.return_data[0]:
                        revert with 0, 'value too small'
                    mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = arg1
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0xe101d3c1 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                    _126 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                    _130 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                    mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                    mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                    mem[(2 * ceil32(return_data.size)) + _130 + 128] = uint8(_126)
                    mem[(2 * ceil32(return_data.size)) + _130 + 160 len floor32(ceil32(return_data.size) + _130 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(ceil32(return_data.size) + _130 + 32)]
                    mem[(2 * ceil32(return_data.size)) + _130 + floor32(ceil32(return_data.size) + _130 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _130 + floor32(ceil32(return_data.size) + _130 + 32) + 160] and 256^(-(ceil32(return_data.size) + _130 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(ceil32(return_data.size) + _130 + 32) + 128] and !(256^(-(ceil32(return_data.size) + _130 + 32 % 32) + 32) - 1)
                    if arg3 > quotaMap[mem[(2 * ceil32(return_data.size)) + _130 + 160 len (6 * ceil32(return_data.size)) + _130 + 32]][arg2].field_512:
                        revert with 0, 'SafeMath sub b > a'
                    quotaMap[mem[(2 * ceil32(return_data.size)) + _130 + 160 len (6 * ceil32(return_data.size)) + _130 + 32]][arg2].field_512 -= arg3
                else:
                    if 10^mem[159 len 1] * fastCrossMinValue / fastCrossMinValue != 10^mem[159 len 1]:
                        revert with 0, 'SafeMath mul overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath div 0'
                    require ext_call.return_data[0]
                    if arg3 < 10^mem[159 len 1] * fastCrossMinValue / ext_call.return_data[0]:
                        revert with 0, 'value too small'
                    mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = arg1
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0xe101d3c1 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                    _134 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                    _137 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                    mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                    mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                    mem[(2 * ceil32(return_data.size)) + _137 + 128] = uint8(_134)
                    mem[(2 * ceil32(return_data.size)) + _137 + 160 len floor32(_137 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(_137 + 32)]
                    mem[(2 * ceil32(return_data.size)) + _137 + floor32(_137 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _137 + floor32(_137 + 32) + 160] and 256^(-(_137 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(_137 + 32) + 128] and !(256^(-(_137 + 32 % 32) + 32) - 1)
                    if arg3 > quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_137 + 32)]][mem[(2 * ceil32(return_data.size)) + _137 + floor32(_137 + 32) + 160 len _137 + -floor32(_137 + 32) + 32]][arg2].field_512:
                        revert with 0, 'SafeMath sub b > a'
                    quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_137 + 32)]][mem[(2 * ceil32(return_data.size)) + _137 + floor32(_137 + 32) + 160 len _137 + -floor32(_137 + 32) + 32]][arg2].field_512 -= arg3
        else:
            call priceOracleAddress.getValue(bytes32 rg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = arg1
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0xe101d3c1 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                _65 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                _73 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                mem[(2 * ceil32(return_data.size)) + _73 + 128] = uint8(_65)
                mem[(2 * ceil32(return_data.size)) + _73 + 160 len floor32(ceil32(return_data.size) + _73 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(ceil32(return_data.size) + _73 + 32)]
                mem[(2 * ceil32(return_data.size)) + _73 + floor32(ceil32(return_data.size) + _73 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _73 + floor32(ceil32(return_data.size) + _73 + 32) + 160] and 256^(-(ceil32(return_data.size) + _73 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(ceil32(return_data.size) + _73 + 32) + 128] and !(256^(-(ceil32(return_data.size) + _73 + 32 % 32) + 32) - 1)
                if arg3 > quotaMap[mem[(2 * ceil32(return_data.size)) + _73 + 160 len (6 * ceil32(return_data.size)) + _73 + 32]][arg2].field_512:
                    revert with 0, 'SafeMath sub b > a'
                quotaMap[mem[(2 * ceil32(return_data.size)) + _73 + 160 len (6 * ceil32(return_data.size)) + _73 + 32]][arg2].field_512 -= arg3
            else:
                if not fastCrossMinValue:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath div 0'
                    require ext_call.return_data[0]
                    if arg3 < 0 / ext_call.return_data[0]:
                        revert with 0, 'value too small'
                    mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = arg1
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0xe101d3c1 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                    _127 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                    _133 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                    mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                    mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                    mem[(2 * ceil32(return_data.size)) + _133 + 128] = uint8(_127)
                    mem[(2 * ceil32(return_data.size)) + _133 + 160 len floor32(ceil32(return_data.size) + _133 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(ceil32(return_data.size) + _133 + 32)]
                    mem[(2 * ceil32(return_data.size)) + _133 + floor32(ceil32(return_data.size) + _133 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _133 + floor32(ceil32(return_data.size) + _133 + 32) + 160] and 256^(-(ceil32(return_data.size) + _133 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(ceil32(return_data.size) + _133 + 32) + 128] and !(256^(-(ceil32(return_data.size) + _133 + 32 % 32) + 32) - 1)
                    if arg3 > quotaMap[mem[(2 * ceil32(return_data.size)) + _133 + 160 len (6 * ceil32(return_data.size)) + _133 + 32]][arg2].field_512:
                        revert with 0, 'SafeMath sub b > a'
                    quotaMap[mem[(2 * ceil32(return_data.size)) + _133 + 160 len (6 * ceil32(return_data.size)) + _133 + 32]][arg2].field_512 -= arg3
                else:
                    if 10^mem[159 len 1] * fastCrossMinValue / fastCrossMinValue != 10^mem[159 len 1]:
                        revert with 0, 'SafeMath mul overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath div 0'
                    require ext_call.return_data[0]
                    if arg3 < 10^mem[159 len 1] * fastCrossMinValue / ext_call.return_data[0]:
                        revert with 0, 'value too small'
                    mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = arg1
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0xe101d3c1 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                    _135 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                    _144 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                    mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                    mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                    mem[(2 * ceil32(return_data.size)) + _144 + 128] = uint8(_135)
                    mem[(2 * ceil32(return_data.size)) + _144 + 160 len floor32(ceil32(return_data.size) + _144 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(ceil32(return_data.size) + _144 + 32)]
                    mem[(2 * ceil32(return_data.size)) + _144 + floor32(ceil32(return_data.size) + _144 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _144 + floor32(ceil32(return_data.size) + _144 + 32) + 160] and 256^(-(ceil32(return_data.size) + _144 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(ceil32(return_data.size) + _144 + 32) + 128] and !(256^(-(ceil32(return_data.size) + _144 + 32 % 32) + 32) - 1)
                    if arg3 > quotaMap[mem[(2 * ceil32(return_data.size)) + _144 + 160 len (6 * ceil32(return_data.size)) + _144 + 32]][arg2].field_512:
                        revert with 0, 'SafeMath sub b > a'
                    quotaMap[mem[(2 * ceil32(return_data.size)) + _144 + 160 len (6 * ceil32(return_data.size)) + _144 + 32]][arg2].field_512 -= arg3
}

function userLock(uint256 arg1, bytes32 arg2, uint256 arg3) {
    mem[0] = msg.sender
    mem[32] = 8
    if not stor8[msg.sender]:
        revert with 0, 'Not in HTLC group'
    mem[96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(tokenManagerAddress)
    call tokenManagerAddress.0xe101d3c1 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 64
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    if fastCrossMinValue <= 0:
        _17 = uint32(arg1), mem[132 len 28]
        _19 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
        mem[ceil32(return_data.size) + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
        mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
        mem[ceil32(return_data.size) + _19 + 128] = uint8(_17)
        mem[ceil32(return_data.size) + _19 + 160 len floor32(_19 + 32)] = mem[ceil32(return_data.size) + 128 len floor32(_19 + 32)]
        mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160] = mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160] and 256^(-(_19 + 32 % 32) + 32) - 1 or mem[ceil32(return_data.size) + floor32(_19 + 32) + 128] and !(256^(-(_19 + 32 % 32) + 32) - 1)
        if not quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_19 + 32)]][mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160 len _19 + -floor32(_19 + 32) + 32]][arg2].field_1536:
            quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_19 + 32)]][mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160 len _19 + -floor32(_19 + 32) + 32]][arg2].field_1536 = 1
            tokenId[arg2][stor21[arg2]] = sha3(mem[ceil32(return_data.size) + 128 len floor32(_19 + 32)], mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160 len _19 + -floor32(_19 + 32) + 32])
            if tokenCount[arg2] + 1 < tokenCount[arg2]:
                revert with 0, 'SafeMath add overflow'
            tokenCount[arg2]++
        if arg3 + quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_19 + 32)]][mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160 len _19 + -floor32(_19 + 32) + 32]][arg2].field_1280 < quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_19 + 32)]][mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160 len _19 + -floor32(_19 + 32) + 32]][arg2].field_1280:
            revert with 0, 'SafeMath add overflow'
        quotaMap[mem[ceil32(return_data.size) + 128 len floor32(_19 + 32)]][mem[ceil32(return_data.size) + _19 + floor32(_19 + 32) + 160 len _19 + -floor32(_19 + 32) + 32]][arg2].field_1280 += arg3
    else:
        require ext_code.size(priceOracleAddress)
        if mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]:
            call priceOracleAddress.getValue(bytes32 rg1) with:
                 gas gas_remaining wei
                args mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = arg1
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0xe101d3c1 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                _70 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                _77 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                mem[(2 * ceil32(return_data.size)) + _77 + 128] = uint8(_70)
                mem[(2 * ceil32(return_data.size)) + _77 + 160 len floor32(_77 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(_77 + 32)]
                mem[(2 * ceil32(return_data.size)) + _77 + floor32(_77 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _77 + floor32(_77 + 32) + 160] and 256^(-(_77 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(_77 + 32) + 128] and !(256^(-(_77 + 32 % 32) + 32) - 1)
                if not quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_77 + 32)]][mem[(2 * ceil32(return_data.size)) + _77 + floor32(_77 + 32) + 160 len _77 + -floor32(_77 + 32) + 32]][arg2].field_1536:
                    quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_77 + 32)]][mem[(2 * ceil32(return_data.size)) + _77 + floor32(_77 + 32) + 160 len _77 + -floor32(_77 + 32) + 32]][arg2].field_1536 = 1
                    tokenId[arg2][stor21[arg2]] = sha3(mem[(2 * ceil32(return_data.size)) + 128 len floor32(_77 + 32)], mem[(2 * ceil32(return_data.size)) + _77 + floor32(_77 + 32) + 160 len _77 + -floor32(_77 + 32) + 32])
                    if tokenCount[arg2] + 1 < tokenCount[arg2]:
                        revert with 0, 'SafeMath add overflow'
                    tokenCount[arg2]++
                if arg3 + quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_77 + 32)]][mem[(2 * ceil32(return_data.size)) + _77 + floor32(_77 + 32) + 160 len _77 + -floor32(_77 + 32) + 32]][arg2].field_1280 < quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_77 + 32)]][mem[(2 * ceil32(return_data.size)) + _77 + floor32(_77 + 32) + 160 len _77 + -floor32(_77 + 32) + 32]][arg2].field_1280:
                    revert with 0, 'SafeMath add overflow'
                quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_77 + 32)]][mem[(2 * ceil32(return_data.size)) + _77 + floor32(_77 + 32) + 160 len _77 + -floor32(_77 + 32) + 32]][arg2].field_1280 += arg3
            else:
                if not fastCrossMinValue:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath div 0'
                    require ext_call.return_data[0]
                    if arg3 < 0 / ext_call.return_data[0]:
                        revert with 0, 'value too small'
                    mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = arg1
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0xe101d3c1 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                    _140 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                    _148 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                    mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                    mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                    mem[(2 * ceil32(return_data.size)) + _148 + 128] = uint8(_140)
                    mem[(2 * ceil32(return_data.size)) + _148 + 160 len floor32(ceil32(return_data.size) + _148 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(ceil32(return_data.size) + _148 + 32)]
                    mem[(2 * ceil32(return_data.size)) + _148 + floor32(ceil32(return_data.size) + _148 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _148 + floor32(ceil32(return_data.size) + _148 + 32) + 160] and 256^(-(ceil32(return_data.size) + _148 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(ceil32(return_data.size) + _148 + 32) + 128] and !(256^(-(ceil32(return_data.size) + _148 + 32 % 32) + 32) - 1)
                    if not quotaMap[mem[(2 * ceil32(return_data.size)) + _148 + 160 len (6 * ceil32(return_data.size)) + _148 + 32]][arg2].field_1536:
                        quotaMap[mem[(2 * ceil32(return_data.size)) + _148 + 160 len (6 * ceil32(return_data.size)) + _148 + 32]][arg2].field_1536 = 1
                        tokenId[arg2][stor21[arg2]] = sha3(mem[(2 * ceil32(return_data.size)) + _148 + 160 len (6 * ceil32(return_data.size)) + _148 + 32])
                        if tokenCount[arg2] + 1 < tokenCount[arg2]:
                            revert with 0, 'SafeMath add overflow'
                        tokenCount[arg2]++
                    if arg3 + quotaMap[mem[(2 * ceil32(return_data.size)) + _148 + 160 len (6 * ceil32(return_data.size)) + _148 + 32]][arg2].field_1280 < quotaMap[mem[(2 * ceil32(return_data.size)) + _148 + 160 len (6 * ceil32(return_data.size)) + _148 + 32]][arg2].field_1280:
                        revert with 0, 'SafeMath add overflow'
                    quotaMap[mem[(2 * ceil32(return_data.size)) + _148 + 160 len (6 * ceil32(return_data.size)) + _148 + 32]][arg2].field_1280 += arg3
                else:
                    if 10^mem[159 len 1] * fastCrossMinValue / fastCrossMinValue != 10^mem[159 len 1]:
                        revert with 0, 'SafeMath mul overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath div 0'
                    require ext_call.return_data[0]
                    if arg3 < 10^mem[159 len 1] * fastCrossMinValue / ext_call.return_data[0]:
                        revert with 0, 'value too small'
                    mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = arg1
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0xe101d3c1 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                    _153 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                    _157 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                    mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                    mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                    mem[(2 * ceil32(return_data.size)) + _157 + 128] = uint8(_153)
                    mem[(2 * ceil32(return_data.size)) + _157 + 160 len floor32(_157 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(_157 + 32)]
                    mem[(2 * ceil32(return_data.size)) + _157 + floor32(_157 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _157 + floor32(_157 + 32) + 160] and 256^(-(_157 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(_157 + 32) + 128] and !(256^(-(_157 + 32 % 32) + 32) - 1)
                    if not quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_157 + 32)]][mem[(2 * ceil32(return_data.size)) + _157 + floor32(_157 + 32) + 160 len _157 + -floor32(_157 + 32) + 32]][arg2].field_1536:
                        quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_157 + 32)]][mem[(2 * ceil32(return_data.size)) + _157 + floor32(_157 + 32) + 160 len _157 + -floor32(_157 + 32) + 32]][arg2].field_1536 = 1
                        tokenId[arg2][stor21[arg2]] = sha3(mem[(2 * ceil32(return_data.size)) + 128 len floor32(_157 + 32)], mem[(2 * ceil32(return_data.size)) + _157 + floor32(_157 + 32) + 160 len _157 + -floor32(_157 + 32) + 32])
                        if tokenCount[arg2] + 1 < tokenCount[arg2]:
                            revert with 0, 'SafeMath add overflow'
                        tokenCount[arg2]++
                    if arg3 + quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_157 + 32)]][mem[(2 * ceil32(return_data.size)) + _157 + floor32(_157 + 32) + 160 len _157 + -floor32(_157 + 32) + 32]][arg2].field_1280 < quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_157 + 32)]][mem[(2 * ceil32(return_data.size)) + _157 + floor32(_157 + 32) + 160 len _157 + -floor32(_157 + 32) + 32]][arg2].field_1280:
                        revert with 0, 'SafeMath add overflow'
                    quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_157 + 32)]][mem[(2 * ceil32(return_data.size)) + _157 + floor32(_157 + 32) + 160 len _157 + -floor32(_157 + 32) + 32]][arg2].field_1280 += arg3
        else:
            call priceOracleAddress.getValue(bytes32 rg1) with:
                 gas gas_remaining wei
                args 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] <= 0:
                mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 100] = arg1
                require ext_code.size(tokenManagerAddress)
                call tokenManagerAddress.0xe101d3c1 with:
                     gas gas_remaining wei
                    args arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (2 * ceil32(return_data.size)) + 96
                require return_data.size >= 64
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                _73 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                _81 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                mem[(2 * ceil32(return_data.size)) + _81 + 128] = uint8(_73)
                mem[(2 * ceil32(return_data.size)) + _81 + 160 len floor32(_81 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(_81 + 32)]
                mem[(2 * ceil32(return_data.size)) + _81 + floor32(_81 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _81 + floor32(_81 + 32) + 160] and 256^(-(_81 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(_81 + 32) + 128] and !(256^(-(_81 + 32 % 32) + 32) - 1)
                if not quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_81 + 32)]][mem[(2 * ceil32(return_data.size)) + _81 + floor32(_81 + 32) + 160 len _81 + -floor32(_81 + 32) + 32]][arg2].field_1536:
                    quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_81 + 32)]][mem[(2 * ceil32(return_data.size)) + _81 + floor32(_81 + 32) + 160 len _81 + -floor32(_81 + 32) + 32]][arg2].field_1536 = 1
                    tokenId[arg2][stor21[arg2]] = sha3(mem[(2 * ceil32(return_data.size)) + 128 len floor32(_81 + 32)], mem[(2 * ceil32(return_data.size)) + _81 + floor32(_81 + 32) + 160 len _81 + -floor32(_81 + 32) + 32])
                    if tokenCount[arg2] + 1 < tokenCount[arg2]:
                        revert with 0, 'SafeMath add overflow'
                    tokenCount[arg2]++
                if arg3 + quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_81 + 32)]][mem[(2 * ceil32(return_data.size)) + _81 + floor32(_81 + 32) + 160 len _81 + -floor32(_81 + 32) + 32]][arg2].field_1280 < quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_81 + 32)]][mem[(2 * ceil32(return_data.size)) + _81 + floor32(_81 + 32) + 160 len _81 + -floor32(_81 + 32) + 32]][arg2].field_1280:
                    revert with 0, 'SafeMath add overflow'
                quotaMap[mem[(2 * ceil32(return_data.size)) + 128 len floor32(_81 + 32)]][mem[(2 * ceil32(return_data.size)) + _81 + floor32(_81 + 32) + 160 len _81 + -floor32(_81 + 32) + 32]][arg2].field_1280 += arg3
            else:
                if not fastCrossMinValue:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath div 0'
                    require ext_call.return_data[0]
                    if arg3 < 0 / ext_call.return_data[0]:
                        revert with 0, 'value too small'
                    mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = arg1
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0xe101d3c1 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                    _145 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                    _151 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                    mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                    mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                    mem[(2 * ceil32(return_data.size)) + _151 + 128] = uint8(_145)
                    mem[(2 * ceil32(return_data.size)) + _151 + 160 len floor32(ceil32(return_data.size) + _151 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(ceil32(return_data.size) + _151 + 32)]
                    mem[(2 * ceil32(return_data.size)) + _151 + floor32(ceil32(return_data.size) + _151 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _151 + floor32(ceil32(return_data.size) + _151 + 32) + 160] and 256^(-(ceil32(return_data.size) + _151 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(ceil32(return_data.size) + _151 + 32) + 128] and !(256^(-(ceil32(return_data.size) + _151 + 32 % 32) + 32) - 1)
                    if not quotaMap[mem[(2 * ceil32(return_data.size)) + _151 + 160 len (6 * ceil32(return_data.size)) + _151 + 32]][arg2].field_1536:
                        quotaMap[mem[(2 * ceil32(return_data.size)) + _151 + 160 len (6 * ceil32(return_data.size)) + _151 + 32]][arg2].field_1536 = 1
                        tokenId[arg2][stor21[arg2]] = sha3(mem[(2 * ceil32(return_data.size)) + _151 + 160 len (6 * ceil32(return_data.size)) + _151 + 32])
                        if tokenCount[arg2] + 1 < tokenCount[arg2]:
                            revert with 0, 'SafeMath add overflow'
                        tokenCount[arg2]++
                    if arg3 + quotaMap[mem[(2 * ceil32(return_data.size)) + _151 + 160 len (6 * ceil32(return_data.size)) + _151 + 32]][arg2].field_1280 < quotaMap[mem[(2 * ceil32(return_data.size)) + _151 + 160 len (6 * ceil32(return_data.size)) + _151 + 32]][arg2].field_1280:
                        revert with 0, 'SafeMath add overflow'
                    quotaMap[mem[(2 * ceil32(return_data.size)) + _151 + 160 len (6 * ceil32(return_data.size)) + _151 + 32]][arg2].field_1280 += arg3
                else:
                    if 10^mem[159 len 1] * fastCrossMinValue / fastCrossMinValue != 10^mem[159 len 1]:
                        revert with 0, 'SafeMath mul overflow'
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath div 0'
                    require ext_call.return_data[0]
                    if arg3 < 10^mem[159 len 1] * fastCrossMinValue / ext_call.return_data[0]:
                        revert with 0, 'value too small'
                    mem[ceil32(return_data.size) + 96] = 0xe101d3c100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 100] = arg1
                    require ext_code.size(tokenManagerAddress)
                    call tokenManagerAddress.0xe101d3c1 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (2 * ceil32(return_data.size)) + 96
                    require return_data.size >= 64
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
                    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
                    require return_data.size >= mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
                    _155 = uint32(arg1), mem[ceil32(return_data.size) + 132 len 28]
                    _164 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
                    mem[(2 * ceil32(return_data.size)) + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
                    mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] = 256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 and mem[(2 * ceil32(return_data.size)) + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] or mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
                    mem[(2 * ceil32(return_data.size)) + _164 + 128] = uint8(_155)
                    mem[(2 * ceil32(return_data.size)) + _164 + 160 len floor32(ceil32(return_data.size) + _164 + 32)] = mem[(2 * ceil32(return_data.size)) + 128 len floor32(ceil32(return_data.size) + _164 + 32)]
                    mem[(2 * ceil32(return_data.size)) + _164 + floor32(ceil32(return_data.size) + _164 + 32) + 160] = mem[(2 * ceil32(return_data.size)) + _164 + floor32(ceil32(return_data.size) + _164 + 32) + 160] and 256^(-(ceil32(return_data.size) + _164 + 32 % 32) + 32) - 1 or mem[(2 * ceil32(return_data.size)) + floor32(ceil32(return_data.size) + _164 + 32) + 128] and !(256^(-(ceil32(return_data.size) + _164 + 32 % 32) + 32) - 1)
                    if not quotaMap[mem[(2 * ceil32(return_data.size)) + _164 + 160 len (6 * ceil32(return_data.size)) + _164 + 32]][arg2].field_1536:
                        quotaMap[mem[(2 * ceil32(return_data.size)) + _164 + 160 len (6 * ceil32(return_data.size)) + _164 + 32]][arg2].field_1536 = 1
                        tokenId[arg2][stor21[arg2]] = sha3(mem[(2 * ceil32(return_data.size)) + _164 + 160 len (6 * ceil32(return_data.size)) + _164 + 32])
                        if tokenCount[arg2] + 1 < tokenCount[arg2]:
                            revert with 0, 'SafeMath add overflow'
                        tokenCount[arg2]++
                    if arg3 + quotaMap[mem[(2 * ceil32(return_data.size)) + _164 + 160 len (6 * ceil32(return_data.size)) + _164 + 32]][arg2].field_1280 < quotaMap[mem[(2 * ceil32(return_data.size)) + _164 + 160 len (6 * ceil32(return_data.size)) + _164 + 32]][arg2].field_1280:
                        revert with 0, 'SafeMath add overflow'
                    quotaMap[mem[(2 * ceil32(return_data.size)) + _164 + 160 len (6 * ceil32(return_data.size)) + _164 + 32]][arg2].field_1280 += arg3
}



}
