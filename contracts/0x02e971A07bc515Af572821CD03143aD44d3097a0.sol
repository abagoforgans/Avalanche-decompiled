contract main {




// =====================  Runtime code  =====================


#
#  - requestSwapNFT(address arg1, uint256 arg2, string arg3, bytes arg4)
#  - sub_391fe4f2(?)
#  - sub_8de7e77f(?)
#  - requestSwap(address arg1, string arg2, bytes arg3, uint256 arg4, bytes arg5)
#  - requestSwap(address arg1, string arg2, bytes arg3, uint256 arg4)
#
const getVersion = '1202'


array of struct chain;
uint8 stor1;
uint256 depositCount;
mapping of uint8 stor3;
mapping of uint8 stor4;
array of struct tokens;
mapping of address tokenAddr;
mapping of uint256 tokenSummaries;
uint256 govId;
uint256 bridgingFee;
uint256 bridgingFeeWithData;
uint256 gasLimitForBridgeReceiver;
address feeGovernanceAddress;
uint256 taxRate;
address taxReceiverAddress;
address tokenDeployerAddress;
mapping of uint256 minRequestAmount;
address policyAdminAddress;
mapping of uint256 sub_c092045a;
mapping of uint256 sub_0a17bd6a;
mapping of uint256 sub_f7b4dc90;
mapping of uint256 sub_074c9847;
uint256 sub_f56511bb;
mapping of uint8 stor23;

function sub_074c9847(?) {
    require calldata.size - 4 >= 32
    return sub_074c9847[arg1]
}

function bridgingFeeWithData() {
    return bridgingFeeWithData
}

function sub_0a17bd6a(?) {
    require calldata.size - 4 >= 32
    return sub_0a17bd6a[arg1]
}

function tokenDeployer() {
    return tokenDeployerAddress
}

function depositCount() {
    return depositCount
}

function govId() {
    return govId
}

function isActivated() {
    return bool(stor1)
}

function sub_50d9876f(?) {
    require calldata.size - 4 >= 32
    return bool(stor23[arg1])
}

function policyAdmin() {
    return policyAdminAddress
}

function gasLimitForBridgeReceiver() {
    return gasLimitForBridgeReceiver
}

function tokenAddr(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return tokenAddr[arg1]
}

function isConfirmed(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor3[arg1])
}

function taxRate() {
    return taxRate
}

function bridgingFee() {
    return bridgingFee
}

function tokens(bytes32 arg1) {
    return tokens[arg1][0 len tokens[arg1].length].field_0
}

function getTokenAddress(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[0] = 0
    mem[ceil32(arg1.length) + 160] = uint256(chain.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + chain.length + 128 > idx:
        mem[idx + 32] = chain[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + chain.length + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + chain.length + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length + chain.length
    mem[64] = arg1.length + ceil32(arg1.length) + chain.length + 160
    mem[arg1.length + ceil32(arg1.length) + chain.length + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[arg1.length + ceil32(arg1.length) + chain.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[arg1.length + ceil32(arg1.length) + chain.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + chain.length + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return tokenAddr[hash]
}

function feeGovernance() {
    return feeGovernanceAddress
}

function sub_c092045a(?) {
    require calldata.size - 4 >= 32
    return sub_c092045a[arg1]
}

function chain() {
    return chain[0 len chain.length].field_0
}

function minRequestAmount(address arg1) {
    require calldata.size - 4 >= 32
    return minRequestAmount[arg1]
}

function tokenSummaries(address arg1) {
    require calldata.size - 4 >= 32
    return tokenSummaries[arg1]
}

function taxReceiver() {
    return taxReceiverAddress
}

function isValidChain(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function sub_f56511bb(?) {
    return sub_f56511bb
}

function sub_f7b4dc90(?) {
    require calldata.size - 4 >= 32
    return sub_f7b4dc90[arg1]
}

function _fallback() payable {
    revert
}

function changeActivate(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == policyAdminAddress
    stor1 = uint8(arg1)
}

function setGasLimitForBridgeReceiver(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == policyAdminAddress
    gasLimitForBridgeReceiver = arg1
}

function setSilentToken(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == policyAdminAddress
    require arg1
    stor23[address(arg1)] = uint8(arg2)
}

function setMinRequestSwapAmount(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == policyAdminAddress
    require arg1
    require tokenSummaries[address(arg1)]
    minRequestAmount[address(arg1)] = arg2
}

function setGovId(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    govId = arg1
}

function sub_1d66777b(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    sub_f56511bb = arg1
}

function setTaxRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1 < 10000
    taxRate = arg1
}

function setPolicyAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    policyAdminAddress = arg1
}

function setTaxReceiver(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    taxReceiverAddress = arg1
}

function setTokenDeployer(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    tokenDeployerAddress = arg1
}

function setFeeGovernance(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require arg1
    feeGovernanceAddress = arg1
}

function sub_6205e9bc(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require ext_code.size(this.address)
    staticcall this.address.getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    chain[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function getChainId(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 212 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length + 20
    mem[64] = arg1.length + ceil32(arg1.length) + 180
    mem[arg1.length + ceil32(arg1.length) + 180 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[arg1.length + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 180] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[arg1.length + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 180] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + 180 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash
}

function sub_f4ab7e6c(?) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == policyAdminAddress
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 212 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length + 20
    mem[64] = arg1.length + ceil32(arg1.length) + 180
    mem[arg1.length + ceil32(arg1.length) + 180 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[arg1.length + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 180] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[arg1.length + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 180] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + 180 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor4[hash]
    sub_c092045a[hash] = arg2
    sub_0a17bd6a[hash] = arg3
}

function addToken(bytes arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require ext_code.size(this.address)
    staticcall this.address.getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8da5cb5b with:
            gas gas_remaining wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    mem[32] = 7
    require not tokenSummaries[address(arg2)]
    mem[0] = 0
    mem[ceil32(arg1.length) + 160] = uint256(chain.field_0)
    idx = ceil32(arg1.length) + 160
    s = 0
    while ceil32(arg1.length) + chain.length + 128 > idx:
        mem[idx + 32] = chain[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + chain.length + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + chain.length + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length + chain.length
    mem[64] = arg1.length + ceil32(arg1.length) + chain.length + 160
    mem[arg1.length + ceil32(arg1.length) + chain.length + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[arg1.length + ceil32(arg1.length) + chain.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[arg1.length + ceil32(arg1.length) + chain.length + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + chain.length + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not tokenAddr[hash]
    tokens[hash][].field_0 = Array(len=arg1.length, data=arg1[all])
    tokenAddr[hash] = arg2
    tokenSummaries[address(arg2)] = hash
}

function sub_a420dc8b(?) {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require ext_code.size(this.address)
    staticcall this.address.getAdmin() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x8da5cb5b with:
            gas gas_remaining wei
    mem[ceil32(arg1.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(arg1.length) + 160] = address(this.address)
    mem[ceil32(arg1.length) + 180 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 212 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = arg1.length + 20
    mem[64] = arg1.length + ceil32(arg1.length) + 180
    mem[arg1.length + ceil32(arg1.length) + 180 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
    mem[arg1.length + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 180] = 256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1 and mem[arg1.length + ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 180] or mem[ceil32(arg1.length) + floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + 160] and !(256^(-(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 32) - 1)
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + 180 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = arg1.length + ceil32(arg1.length) + ceil32(chain.length) + 212
    mem[arg1.length + ceil32(arg1.length) + 180] = chain.length
    mem[0] = 0
    mem[arg1.length + ceil32(arg1.length) + 212] = uint256(chain.field_0)
    idx = arg1.length + ceil32(arg1.length) + 212
    s = 0
    while arg1.length + ceil32(arg1.length) + chain.length + 180 > idx:
        mem[idx + 32] = chain[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[arg1.length + ceil32(arg1.length) + ceil32(chain.length) + 244] = address(this.address)
    mem[arg1.length + ceil32(arg1.length) + ceil32(chain.length) + 264 len floor32(chain.length)] = mem[arg1.length + ceil32(arg1.length) + 212 len floor32(chain.length)]
    mem[arg1.length + ceil32(arg1.length) + ceil32(chain.length) + floor32(chain.length) + 264] = mem[arg1.length + ceil32(arg1.length) + floor32(chain.length) + -chain.length % 32 + 244 len chain.length % 32] or Mask(8 * -chain.length % 32 + 32, -(8 * -chain.length % 32 + 32) + 256, mem[arg1.length + ceil32(arg1.length) + ceil32(chain.length) + floor32(chain.length) + 264])
    mem[chain.length + arg1.length + ceil32(arg1.length) + ceil32(chain.length) + 264 len floor32(chain.length + 20)] = mem[arg1.length + ceil32(arg1.length) + ceil32(chain.length) + 244 len floor32(chain.length + 20)]
    mem[chain.length + arg1.length + ceil32(arg1.length) + ceil32(chain.length) + floor32(chain.length + 20) + 264] = 256^(-(chain.length + 20 % 32) + 32) - 1 and mem[chain.length + arg1.length + ceil32(arg1.length) + ceil32(chain.length) + floor32(chain.length + 20) + 264] or mem[arg1.length + ceil32(arg1.length) + ceil32(chain.length) + floor32(chain.length + 20) + 244] and !(256^(-(chain.length + 20 % 32) + 32) - 1)
    hash = sha256hash(mem[arg1.length + ceil32(arg1.length) + ceil32(chain.length) + 244 len floor32(chain.length + 20)], mem[chain.length + arg1.length + ceil32(arg1.length) + ceil32(chain.length) + floor32(chain.length + 20) + 264 len chain.length + -floor32(chain.length + 20) + 20]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require hash != hash
    stor4[hash] = uint8(arg2)
    if not arg2:
        sub_074c9847[hash] = 0
        sub_f7b4dc90[hash] = 0
    else:
        sub_074c9847[hash] = arg3
        sub_f7b4dc90[hash] = arg4
}

function sub_2354dcc6(?) {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg2.length) + arg3.length + 160] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = arg4.length
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len arg4.length] = arg4[all]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 192] = 0
    require msg.sender == policyAdminAddress
    mem[0] = 0
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224] = uint256(chain.field_0)
    idx = ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224
    s = 0
    while ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 192 > idx:
        mem[idx + 32] = chain[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + floor32(arg2.length) + -(arg2.length % 32) + 256 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 192] = arg2.length + chain.length
    mem[64] = arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 224
    _1060 = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 224 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + 224 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)])]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) + 224] = 256^(-(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] % 32) + 32) - 1 and mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) + 224] or mem[ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)]) + 224] and !(256^(-(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg2.length) + ceil32(arg3.length) + arg4.length + 224 len -arg4.length + ceil32(arg4.length)] % 32) + 32) - 1)
    hash = sha256hash(mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 224 len _1060]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[32] = 6
    require not tokenAddr[hash]
    if not arg1:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 224] = 0x47d66fe800000000000000000000000000000000000000000000000000000000
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 228] = 64
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 292] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 324 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 260] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 96
            mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 324] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            _1873 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 356 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if not _1873 % 32:
                require ext_code.size(tokenDeployerAddress)
                call tokenDeployerAddress.0x47d66fe8 with:
                     gas gas_remaining wei
                    args mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 228 len _1873 + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128]
            else:
                mem[floor32(_1873) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 356] = mem[floor32(_1873) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + -(_1873 % 32) + 388 len _1873 % 32]
                require ext_code.size(tokenDeployerAddress)
                call tokenDeployerAddress.0x47d66fe8 with:
                     gas gas_remaining wei
                    args mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 228 len floor32(_1873) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 160]
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 324] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 356 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 260] = floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 128
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 356] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            _1911 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 388 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if not _1911 % 32:
                require ext_code.size(tokenDeployerAddress)
                call tokenDeployerAddress.0x47d66fe8 with:
                     gas gas_remaining wei
                    args mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 228 len _1911 + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160]
            else:
                mem[floor32(_1911) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 388] = mem[floor32(_1911) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + -(_1911 % 32) + 420 len _1911 % 32]
                require ext_code.size(tokenDeployerAddress)
                call tokenDeployerAddress.0x47d66fe8 with:
                     gas gas_remaining wei
                    args mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 228 len floor32(_1911) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192]
    else:
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 224] = 0x50e8d14800000000000000000000000000000000000000000000000000000000
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 292] = arg5
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 228] = 96
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 324] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 356 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len ceil32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        if not Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32:
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 260] = Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 128
            mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 356] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            _1876 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            mem[Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 388 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if not _1876 % 32:
                require ext_code.size(tokenDeployerAddress)
                call tokenDeployerAddress.0x50e8d148 with:
                     gas gas_remaining wei
                    args mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 228 len _1876 + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 160]
            else:
                mem[floor32(_1876) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 388] = mem[floor32(_1876) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + -(_1876 % 32) + 420 len _1876 % 32]
                require ext_code.size(tokenDeployerAddress)
                call tokenDeployerAddress.0x50e8d148 with:
                     gas gas_remaining wei
                    args mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 228 len floor32(_1876) + Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] + 192]
        else:
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 356] = mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 388 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 260] = floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 160
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 388] = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            _1913 = Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)]
            mem[floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 420 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])] = mem[ceil32(arg2.length) + ceil32(arg3.length) + 192 len ceil32(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[ceil32(arg2.length) + arg3.length + 192 len -arg3.length + ceil32(arg3.length)])]
            if not _1913 % 32:
                require ext_code.size(tokenDeployerAddress)
                call tokenDeployerAddress.0x50e8d148 with:
                     gas gas_remaining wei
                    args mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 228 len _1913 + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192]
            else:
                mem[floor32(_1913) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 420] = mem[floor32(_1913) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + -(_1913 % 32) + 452 len _1913 % 32]
                require ext_code.size(tokenDeployerAddress)
                call tokenDeployerAddress.0x50e8d148 with:
                     gas gas_remaining wei
                    args mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + ceil32(arg4.length) + chain.length + 228 len floor32(_1913) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require address(ext_call.return_data[0])
    tokens[hash][].field_0 = Array(len=arg2.length, data=arg2[all])
    tokenAddr[hash] = address(ext_call.return_data[0])
    tokenSummaries[address(ext_call.return_data[0])] = hash
}

function requestSwapNFT(address arg1, uint256 arg2, string arg3, bytes arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[96] = arg3.length
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + 128] = arg4.length
    mem[ceil32(arg3.length) + 160 len arg4.length] = arg4[all]
    mem[ceil32(arg3.length) + arg4.length + 160] = 0
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 160] = arg5.length
    mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len arg5.length] = arg5[all]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 192] = 0
    require stor1
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224] = address(this.address)
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 244 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg3.length) + -(arg3.length % 32) + 276 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg3.length + 20
    mem[64] = arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 244
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 244 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 224 len floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)])]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]) + 244] = 256^(-(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)] % 32) + 32) - 1 and mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]) + 244] or mem[ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]) + 224] and !(256^(-(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)] % 32) + 32) - 1)
    hash = sha256hash(mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 244 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg3.length) + ceil32(arg4.length) + arg5.length + 224 len -arg5.length + ceil32(arg5.length)]]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.value >= sub_0a17bd6a[hash]
    require Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 276] = address(this.address)
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 296 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[(2 * floor32(arg3.length)) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
    mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 244] = arg3.length + 20
    mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 296 len floor32(arg3.length + 20)] = mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 276 len floor32(arg3.length + 20)]
    mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg3.length + 20) + 296] = 256^(-(arg3.length + 20 % 32) + 32) - 1 and mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg3.length + 20) + 296] or mem[arg3.length + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + floor32(arg3.length + 20) + 276] and !(256^(-(arg3.length + 20 % 32) + 32) - 1)
    hash = sha256hash(mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 296 len arg3.length + 20]) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor4[hash]
    require arg1
    require not stor23[address(arg1)]
    require feeGovernanceAddress
    call feeGovernanceAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not return_data.size:
        require ext_call.success
        require tokenSummaries[address(arg1)]
        mem[32] = 5
        mem[64] = (2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 328
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 296] = tokens[stor7[address(arg1)]].length
        mem[0] = sha3(tokenSummaries[address(arg1)], 5)
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328] = tokens[stor7[address(arg1)]].field_0
        idx = (2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328
        s = 0
        while (2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + tokens[stor7[address(arg1)]].length + 296 > idx:
            mem[idx + 32] = tokens[stor7[address(arg1)]][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require tokens[stor7[address(arg1)]].length != 0
        require ext_code.size(arg1)
        staticcall arg1.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require address(ext_call.return_data[0]) == msg.sender
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 364] = arg2
        require ext_code.size(arg1)
        call arg1.burn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        depositCount++
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 360] = msg.sender
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 456] = arg1
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 488] = arg2
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 520] = 1
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 552] = depositCount
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 328] = 288
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 616] = arg3.length
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 648 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 392] = arg3.length + 320
        mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 648] = arg4.length
        mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 680 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 424] = arg4.length + arg3.length + 352
            mem[arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 680] = tokens[stor7[address(arg1)]].length
            mem[arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 712 len ceil32(tokens[stor7[address(arg1)]].length)] = mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len ceil32(tokens[stor7[address(arg1)]].length)]
            if not tokens[stor7[address(arg1)]].length % 32:
                mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 584] = tokens[stor7[address(arg1)]].length + arg4.length + arg3.length + 384
                mem[tokens[stor7[address(arg1)]].length + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 712] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[tokens[stor7[address(arg1)]].length + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 744 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 648 len arg4.length + arg3.length + 32], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + arg4.length + 712 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + tokens[stor7[address(arg1)]].length + -ceil32(tokens[stor7[address(arg1)]].length) + 32]), msg.sender, arg3.length + 320, arg4.length + arg3.length + 352, address(arg1), arg2, 1, depositCount, tokens[stor7[address(arg1)]].length + arg4.length + arg3.length + 384);
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 744] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 776 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 648 len arg4.length + arg3.length + 32], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + arg4.length + 712 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + -ceil32(tokens[stor7[address(arg1)]].length) + 64]), msg.sender, arg3.length + 320, arg4.length + arg3.length + 352, address(arg1), arg2, 1, depositCount, tokens[stor7[address(arg1)]].length + arg4.length + arg3.length + 384);
            else:
                mem[floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 712] = mem[floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + -tokens[stor7[address(arg1)]].length % 32 + 744 len tokens[stor7[address(arg1)]].length % 32]
                mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 584] = floor32(tokens[stor7[address(arg1)]].length) + arg4.length + arg3.length + 416
                mem[floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 744] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 776 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 648 len arg4.length + arg3.length + 32], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + arg4.length + 712 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + floor32(tokens[stor7[address(arg1)]].length) + -ceil32(tokens[stor7[address(arg1)]].length) + 64]), msg.sender, arg3.length + 320, arg4.length + arg3.length + 352, address(arg1), arg2, 1, depositCount, floor32(tokens[stor7[address(arg1)]].length) + arg4.length + arg3.length + 416);
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 776] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 808 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 648 len arg4.length + arg3.length + 32], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + arg4.length + 712 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + -ceil32(tokens[stor7[address(arg1)]].length) + 96]), msg.sender, arg3.length + 320, arg4.length + arg3.length + 352, address(arg1), arg2, 1, depositCount, floor32(tokens[stor7[address(arg1)]].length) + arg4.length + arg3.length + 416);
        else:
            mem[floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 680] = mem[floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + -(arg4.length % 32) + 712 len arg4.length % 32]
            mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 424] = floor32(arg4.length) + arg3.length + 384
            mem[floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 712] = tokens[stor7[address(arg1)]].length
            mem[floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 744 len ceil32(tokens[stor7[address(arg1)]].length)] = mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len ceil32(tokens[stor7[address(arg1)]].length)]
            if not tokens[stor7[address(arg1)]].length % 32:
                mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 584] = tokens[stor7[address(arg1)]].length + floor32(arg4.length) + arg3.length + 416
                mem[tokens[stor7[address(arg1)]].length + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 744] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[tokens[stor7[address(arg1)]].length + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 776 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 648 len floor32(arg4.length) + arg3.length + 64], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + floor32(arg4.length) + 744 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + tokens[stor7[address(arg1)]].length + -ceil32(tokens[stor7[address(arg1)]].length) + 32]), msg.sender, arg3.length + 320, floor32(arg4.length) + arg3.length + 384, address(arg1), arg2, 1, depositCount, tokens[stor7[address(arg1)]].length + floor32(arg4.length) + arg3.length + 416);
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 776] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 808 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 648 len floor32(arg4.length) + arg3.length + 64], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + floor32(arg4.length) + 744 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + -ceil32(tokens[stor7[address(arg1)]].length) + 64]), msg.sender, arg3.length + 320, floor32(arg4.length) + arg3.length + 384, address(arg1), arg2, 1, depositCount, tokens[stor7[address(arg1)]].length + floor32(arg4.length) + arg3.length + 416);
            else:
                mem[floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 744] = mem[floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + -tokens[stor7[address(arg1)]].length % 32 + 776 len tokens[stor7[address(arg1)]].length % 32]
                mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 584] = floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + arg3.length + 448
                mem[floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 776] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 808 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 648 len floor32(arg4.length) + arg3.length + 64], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + floor32(arg4.length) + 744 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + floor32(tokens[stor7[address(arg1)]].length) + -ceil32(tokens[stor7[address(arg1)]].length) + 64]), msg.sender, arg3.length + 320, floor32(arg4.length) + arg3.length + 384, address(arg1), arg2, 1, depositCount, floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + arg3.length + 448);
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 808] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 840 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(tokens[stor7[address(arg1)]].length) + 648 len floor32(arg4.length) + arg3.length + 64], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + floor32(arg4.length) + 744 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + -ceil32(tokens[stor7[address(arg1)]].length) + 96]), msg.sender, arg3.length + 320, floor32(arg4.length) + arg3.length + 384, address(arg1), arg2, 1, depositCount, floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + arg3.length + 448);
    else:
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 296] = return_data.size
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 328 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        require tokenSummaries[address(arg1)]
        mem[32] = 5
        mem[64] = (2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 329
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 297] = tokens[stor7[address(arg1)]].length
        mem[0] = sha3(tokenSummaries[address(arg1)], 5)
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329] = tokens[stor7[address(arg1)]].field_0
        idx = (2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329
        s = 0
        while (2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + tokens[stor7[address(arg1)]].length + 297 > idx:
            mem[idx + 32] = tokens[stor7[address(arg1)]][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require tokens[stor7[address(arg1)]].length != 0
        require ext_code.size(arg1)
        staticcall arg1.0x6352211e with:
                gas gas_remaining wei
               args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require address(ext_call.return_data[0]) == msg.sender
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 365] = arg2
        require ext_code.size(arg1)
        call arg1.burn(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        depositCount++
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 361] = msg.sender
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 457] = arg1
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 489] = arg2
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 521] = 1
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 553] = depositCount
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 329] = 288
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 617] = arg3.length
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 649 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 393] = arg3.length + 320
        mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 649] = arg4.length
        mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 681 len ceil32(arg4.length)] = arg4[all], mem[ceil32(arg3.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 425] = arg4.length + arg3.length + 352
            mem[arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 681] = tokens[stor7[address(arg1)]].length
            mem[arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 713 len ceil32(tokens[stor7[address(arg1)]].length)] = mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329 len ceil32(tokens[stor7[address(arg1)]].length)]
            if not tokens[stor7[address(arg1)]].length % 32:
                mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 585] = tokens[stor7[address(arg1)]].length + arg4.length + arg3.length + 384
                mem[tokens[stor7[address(arg1)]].length + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 713] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[tokens[stor7[address(arg1)]].length + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 745 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 649 len arg4.length + arg3.length + 32], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + arg4.length + 713 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + tokens[stor7[address(arg1)]].length + -ceil32(tokens[stor7[address(arg1)]].length) + 32]), msg.sender, arg3.length + 320, arg4.length + arg3.length + 352, address(arg1), arg2, 1, depositCount, tokens[stor7[address(arg1)]].length + arg4.length + arg3.length + 384);
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 745] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 777 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 649 len arg4.length + arg3.length + 32], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + arg4.length + 713 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + -ceil32(tokens[stor7[address(arg1)]].length) + 64]), msg.sender, arg3.length + 320, arg4.length + arg3.length + 352, address(arg1), arg2, 1, depositCount, tokens[stor7[address(arg1)]].length + arg4.length + arg3.length + 384);
            else:
                mem[floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 713] = mem[floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + -tokens[stor7[address(arg1)]].length % 32 + 745 len tokens[stor7[address(arg1)]].length % 32]
                mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 585] = floor32(tokens[stor7[address(arg1)]].length) + arg4.length + arg3.length + 416
                mem[floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 745] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 777 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 649 len arg4.length + arg3.length + 32], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + arg4.length + 713 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + floor32(tokens[stor7[address(arg1)]].length) + -ceil32(tokens[stor7[address(arg1)]].length) + 64]), msg.sender, arg3.length + 320, arg4.length + arg3.length + 352, address(arg1), arg2, 1, depositCount, floor32(tokens[stor7[address(arg1)]].length) + arg4.length + arg3.length + 416);
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 777] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + arg4.length + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 809 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 649 len arg4.length + arg3.length + 32], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + arg4.length + 713 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + -ceil32(tokens[stor7[address(arg1)]].length) + 96]), msg.sender, arg3.length + 320, arg4.length + arg3.length + 352, address(arg1), arg2, 1, depositCount, floor32(tokens[stor7[address(arg1)]].length) + arg4.length + arg3.length + 416);
        else:
            mem[floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 681] = mem[floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + -(arg4.length % 32) + 713 len arg4.length % 32]
            mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 425] = floor32(arg4.length) + arg3.length + 384
            mem[floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 713] = tokens[stor7[address(arg1)]].length
            mem[floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 745 len ceil32(tokens[stor7[address(arg1)]].length)] = mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329 len ceil32(tokens[stor7[address(arg1)]].length)]
            if not tokens[stor7[address(arg1)]].length % 32:
                mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 585] = tokens[stor7[address(arg1)]].length + floor32(arg4.length) + arg3.length + 416
                mem[tokens[stor7[address(arg1)]].length + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 745] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[tokens[stor7[address(arg1)]].length + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 777 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 649 len floor32(arg4.length) + arg3.length + 64], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + floor32(arg4.length) + 745 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + tokens[stor7[address(arg1)]].length + -ceil32(tokens[stor7[address(arg1)]].length) + 32]), msg.sender, arg3.length + 320, floor32(arg4.length) + arg3.length + 384, address(arg1), arg2, 1, depositCount, tokens[stor7[address(arg1)]].length + floor32(arg4.length) + arg3.length + 416);
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 777] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 809 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 649 len floor32(arg4.length) + arg3.length + 64], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + floor32(arg4.length) + 745 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + tokens[stor7[address(arg1)]].length + -ceil32(tokens[stor7[address(arg1)]].length) + 64]), msg.sender, arg3.length + 320, floor32(arg4.length) + arg3.length + 384, address(arg1), arg2, 1, depositCount, tokens[stor7[address(arg1)]].length + floor32(arg4.length) + arg3.length + 416);
            else:
                mem[floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 745] = mem[floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + -tokens[stor7[address(arg1)]].length % 32 + 777 len tokens[stor7[address(arg1)]].length % 32]
                mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 585] = floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + arg3.length + 448
                mem[floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 777] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]
                mem[floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 809 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])] = mem[ceil32(arg3.length) + ceil32(arg4.length) + 192 len ceil32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)])]
                if not Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32:
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 649 len floor32(arg4.length) + arg3.length + 64], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + floor32(arg4.length) + 745 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] + floor32(tokens[stor7[address(arg1)]].length) + -ceil32(tokens[stor7[address(arg1)]].length) + 64]), msg.sender, arg3.length + 320, floor32(arg4.length) + arg3.length + 384, address(arg1), arg2, 1, depositCount, floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + arg3.length + 448);
                else:
                    mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 809] = mem[floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + (4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + -(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32) + 841 len Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)] % 32]
                    emit SwapRequestNFT(Array(len=arg3.length, data=mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + ceil32(tokens[stor7[address(arg1)]].length) + 649 len floor32(arg4.length) + arg3.length + 64], tokens[stor7[address(arg1)]].length, mem[(2 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + 329 len ceil32(tokens[stor7[address(arg1)]].length)], mem[(4 * arg3.length) + ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + ceil32(return_data.size) + (2 * ceil32(tokens[stor7[address(arg1)]].length)) + floor32(arg4.length) + 745 len floor32(Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[ceil32(arg3.length) + arg4.length + 192 len -arg4.length + ceil32(arg4.length)]) + floor32(tokens[stor7[address(arg1)]].length) + -ceil32(tokens[stor7[address(arg1)]].length) + 96]), msg.sender, arg3.length + 320, floor32(arg4.length) + arg3.length + 384, address(arg1), arg2, 1, depositCount, floor32(tokens[stor7[address(arg1)]].length) + floor32(arg4.length) + arg3.length + 448);
}



}
