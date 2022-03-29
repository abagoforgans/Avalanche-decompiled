contract main {




// =====================  Runtime code  =====================


const BlockTimestamp = block.timestamp


address owner;
address stor1;
uint256 geUnlockTime;
mapping of struct stor3;
mapping of address tokenToOwner;
mapping of uint256 individualTokenCreationCount;
mapping of uint8 stor6;
mapping of address tokenMap;
array of uint256 addressToLogo;
uint256 numberOfTokensCreated;
address stor10;
uint256 maxTaxFee;
uint256 maxLiqFee;
uint256 minMxTxPercentage;
uint256 creationFees;
address feesAddress;

function verifiedDxMint(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[arg1])
}

function minMxTxPercentage() {
    return minMxTxPercentage
}

function maxLiqFee() {
    return maxLiqFee
}

function tokenToOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return address(tokenToOwner[arg1])
}

function addressToLogo(address arg1) {
    return addressToLogo[arg1][0 len addressToLogo[arg1].length]
}

function creationFees() {
    return creationFees
}

function numberOfTokensCreated() {
    return numberOfTokensCreated
}

function owner() {
    return owner
}

function feesAddress() {
    return feesAddress
}

function tokenMap(uint256 arg1) {
    require calldata.size - 4 >= 32
    return tokenMap[arg1]
}

function geUnlockTime() {
    return geUnlockTime
}

function individualTokenCreationCount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return individualTokenCreationCount[arg1]
}

function maxTaxFee() {
    return maxTaxFee
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit code.data[18406 len 32]: owner, 0
    owner = 0
}

function updateFees(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    creationFees = arg1
}

function tokenParamterUpdate(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxTaxFee = arg1
    maxLiqFee = arg2
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    geUnlockTime = arg1 + block.timestamp
    emit code.data[18406 len 32]: 0, 0
}

function updateFeeWalletAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'address cant be 0x0'
    feesAddress = arg1
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You don't have permission to unlock the token contract'
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit code.data[18406 len 32]: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit code.data[18406 len 32]: owner, arg1
    owner = arg1
}

function updateLogo(string arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    addressToLogo[stor3[msg.sender][arg2].field_1280][] = Array(len=arg1.length, data=arg1[all])
}

function getAllTokens() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < numberOfTokensCreated:
        mem[0] = idx
        mem[32] = 7
        require idx < mem[96]
        mem[(32 * idx) + 128] = tokenMap[idx]
        idx = idx + 1
        continue 
    mem[128] = 32
    idx = 0
    s = 160
    t = 128
    while idx < 32:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return 32, 32, mem[160 len 1024]
}

function tokenStorage(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    mem[128] = stor3[arg1][arg2][2].field_0
    idx = 128
    s = 0
    while stor3[arg1][arg2][2].length + 96 > idx:
        mem[idx + 32] = stor3[arg1][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor3[arg1][arg2][2].length) + 160] = stor3[arg1][arg2][3].field_0
    idx = ceil32(stor3[arg1][arg2][2].length) + 160
    s = 0
    while ceil32(stor3[arg1][arg2][2].length) + stor3[arg1][arg2][3].length + 128 > idx:
        mem[idx + 32] = stor3[arg1][arg2][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor3[arg1][arg2][2].length) > stor3[arg1][arg2][2].length:
        mem[ceil32(stor3[arg1][arg2][2].length) + ceil32(stor3[arg1][arg2][3].length) + stor3[arg1][arg2][2].length + 384] = 0
    mem[(2 * ceil32(stor3[arg1][arg2][2].length)) + ceil32(stor3[arg1][arg2][3].length) + 384] = stor3[arg1][arg2][3].length
    mem[(2 * ceil32(stor3[arg1][arg2][2].length)) + ceil32(stor3[arg1][arg2][3].length) + 416 len ceil32(stor3[arg1][arg2][3].length)] = mem[ceil32(stor3[arg1][arg2][2].length) + 160 len ceil32(stor3[arg1][arg2][3].length)]
    if ceil32(stor3[arg1][arg2][3].length) > stor3[arg1][arg2][3].length:
        mem[(2 * ceil32(stor3[arg1][arg2][2].length)) + ceil32(stor3[arg1][arg2][3].length) + stor3[arg1][arg2][3].length + 416] = 0
    return bool(stor3[arg1][arg2].field_0), 
           stor3[arg1][arg2].field_256,
           Array(len=stor3[arg1][arg2][2].length, data=mem[128 len ceil32(stor3[arg1][arg2][2].length)], stor3[arg1][arg2][3].length, mem[ceil32(stor3[arg1][arg2][2].length) + 160 len ceil32(stor3[arg1][arg2][3].length)]),
           ceil32(stor3[arg1][arg2][2].length) + 224,
           stor3[arg1][arg2].field_1024,
           stor3[arg1][arg2].field_1280
}

function CreateCustomToken(string arg1, string arg2, uint8 arg3, uint256 arg4, uint8 arg5, uint8 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1.length + arg1 + 36
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307()
    mem[ceil32(arg1.length) + 128] = arg2.length
    require calldata.size >= arg2.length + arg2 + 36
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 == arg3
    require arg5 == arg5
    require arg6 == arg6
    if arg5 > maxTaxFee:
        revert with 0, 'fees set out of bound'
    if arg6 > maxLiqFee:
        revert with 0, 'fees set out of bound'
    if arg4 <= 0:
        revert with 0, 'invalid token amount'
    if arg3 <= 0:
        revert with 0, 'decimal value invalid'
    if creationFees:
        if msg.value < creationFees:
            revert with 0, 'msg.value must be >= creationFees!'
        call feesAddress with:
           value creationFees wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 12821] = code.data[5585 len 12821]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 12981] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13013] = 320
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13301] = arg1.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13333 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if ceil32(arg1.length) > arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 13333] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13045] = ceil32(arg1.length) + 352
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 13333] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
    mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 13365 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    if ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) > Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]:
        mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + 13365] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13077] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13109] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13141] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13173] = arg6
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13205] = maxTaxFee
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13237] = maxLiqFee
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 13269] = minMxTxPercentage
    create contract with 0 wei
                    code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + ceil32(arg1.length) + 13205]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor10 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 288] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 320] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 352] = 1
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 384] = block.timestamp
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 416] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 448] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 480] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 512] = stor10
    stor3[msg.sender][stor5[msg.sender]].field_0 = 1
    stor3[msg.sender][stor5[msg.sender]].field_256 = block.timestamp
    stor3[msg.sender][stor5[msg.sender]][2][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor3[msg.sender][stor5[msg.sender]][3][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    stor3[msg.sender][stor5[msg.sender]].field_1024 = arg4
    stor3[msg.sender][stor5[msg.sender]].field_1280 = stor10
    uint256(tokenToOwner[stor10]) = msg.sender or Mask(96, 160, uint256(tokenToOwner[stor10]))
    stor6[stor10] = 1
    individualTokenCreationCount[msg.sender]++
    tokenMap[stor9] = stor10
    numberOfTokensCreated++
    return stor10
}



}
