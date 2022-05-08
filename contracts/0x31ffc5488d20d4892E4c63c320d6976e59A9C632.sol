contract main {




// =====================  Runtime code  =====================


address adminAddress;
uint256 stor0;
mapping of uint8 stor1;
address stor10;
uint8 stor11; offset 160
uint8 stor11; offset 168
address buyContractAddress;
address battleContractAddress;
address marketContractAddress;
address nftContractAddress;
address tokenContractAddress;
address bnbContractAddress;
address swapContractAddress;
address randomContractAddress;
address workContractAddress;
address eneryContractAddress;
address sub_d03e8a41Address;
address sub_755da6e7Address;
array of uint256 stor24;
array of uint256 stor25;
array of uint256 stor26;
array of uint256 stor42;
array of uint256 stor43;
array of uint256 stor44;
array of address pATH_BNB_TOKEN;
array of struct pATH_TOKEN_BNB;

function BnbContract() {
    return bnbContractAddress
}

function rarities(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < 18
    require arg2 < stor24[arg1]
    return rarities[uint8(arg2)]
}

function aliases(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 < 18
    require arg2 < stor42[arg1]
    return aliases[uint8(arg2)]
}

function RandomContract() {
    return randomContractAddress
}

function admins(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function sub_755da6e7(?) {
    return sub_755da6e7Address
}

function TokenContract() {
    return tokenContractAddress
}

function PATH_TOKEN_BNB(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pATH_TOKEN_BNB.length
    return address(pATH_TOKEN_BNB[arg1].field_0)
}

function BuyContract() {
    return buyContractAddress
}

function PATH_BNB_TOKEN(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pATH_BNB_TOKEN.length
    return address(pATH_BNB_TOKEN[arg1])
}

function WorkContract() {
    return workContractAddress
}

function EneryContract() {
    return eneryContractAddress
}

function sub_d03e8a41(?) {
    return sub_d03e8a41Address
}

function BattleContract() {
    return battleContractAddress
}

function SwapContract() {
    return swapContractAddress
}

function NftContract() {
    return nftContractAddress
}

function admin() {
    return address(adminAddress)
}

function MarketContract() {
    return marketContractAddress
}

function claim() {
  stop
}

function claimMe() {
  stop
}

function _fallback() payable {
  stop
}

function hatch(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
}

function fight(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
}

function testFight3(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
}

function testFight3Inner(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
}

function testFight3Multi(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
}

function sub_9946c322(?) {
    require calldata.size - 4 >= 32
    require arg1 == uint32(arg1)
    return 0
}

function setBuy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    buyContractAddress = arg1
}

function setBattle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    battleContractAddress = arg1
}

function changeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    address(adminAddress) = arg1
}

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == address(adminAddress)
    stor1[address(arg1)] = 1
}

function withdraw() {
    require msg.sender == address(adminAddress)
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transfer1(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not uint8(stor11.field_168):
        revert with 0, 'temp not open'
    require ext_code.size(nftContractAddress)
    call nftContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function approve(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == address(adminAddress)
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function callNftTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if address(adminAddress) != msg.sender:
        if not uint8(stor11.field_160):
            revert with 0, 'no admin'
    require ext_code.size(nftContractAddress)
    call nftContractAddress.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function nftTransferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if address(adminAddress) != msg.sender:
        if not uint8(stor11.field_160):
            revert with 0, 'no admin'
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function callTransfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if address(adminAddress) != msg.sender:
        require uint8(stor11.field_160)
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_a8a9f97c(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(sub_d03e8a41Address)
    staticcall sub_d03e8a41Address.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_755da6e7Address)
    staticcall sub_755da6e7Address.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return sha3(tx.origin, block.hash(block.number - 1), block.timestamp, arg1, ext_call.return_data[0], ext_call.return_data[0])
}

function transfer(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == address(adminAddress)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2843a4eb(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(this.address)
    staticcall this.address.0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not proxy admin'
    require ext_code.size(nftContractAddress)
    staticcall nftContractAddress.minted() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, ext_call.return_data[0] + 1)) % 10:
        revert with 0, 'is sheep'
    call tx.origin with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sellRoute() {
    mem[64] = (32 * pATH_TOKEN_BNB.length) + 128
    mem[96] = pATH_TOKEN_BNB.length
    if not pATH_TOKEN_BNB.length:
        mem[(32 * pATH_TOKEN_BNB.length) + 128] = 32
        mem[(32 * pATH_TOKEN_BNB.length) + 160] = pATH_TOKEN_BNB.length
        idx = 0
        s = (32 * pATH_TOKEN_BNB.length) + 192
        t = 128
        while idx < pATH_TOKEN_BNB.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * pATH_TOKEN_BNB.length) + 128
           len (96 * pATH_TOKEN_BNB.length) + 64
    mem[128] = address(pATH_TOKEN_BNB.field_0)
    idx = 128
    s = 0
    while (32 * pATH_TOKEN_BNB.length) + 96 > idx:
        mem[idx + 32] = address(pATH_TOKEN_BNB[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * pATH_TOKEN_BNB.length) + 128] = 32
    mem[(32 * pATH_TOKEN_BNB.length) + 160] = pATH_TOKEN_BNB.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < pATH_TOKEN_BNB.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * pATH_TOKEN_BNB.length) + -mem[64] + 192
}

function transferLimit() {
    mem[96] = 0x1f00ca7400000000000000000000000000000000000000000000000000000000
    mem[100] = 12000 * 10^18
    mem[132] = 64
    mem[164] = pATH_BNB_TOKEN.length
    mem[0] = 5
    idx = 0
    s = 0
    t = 196
    while idx < pATH_BNB_TOKEN.length:
        mem[t] = address(pATH_BNB_TOKEN[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    require ext_code.size(stor10)
    staticcall stor10.getAmountsIn(uint256 arg1, address[] arg2) with:
            gas gas_remaining wei
           args 12000 * 10^18, 64, pATH_BNB_TOKEN.length, mem[196 len 32 * pATH_BNB_TOKEN.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _17 = mem[96 len 4], 2793967723846
    require mem[96 len 4], 2793967723846 <= test266151307()
    require mem[96 len 4], 2793967723846 + 127 < return_data.size + 96
    _18 = mem[mem[96 len 4], 2793967723846 + 96]
    require mem[mem[96 len 4], 2793967723846 + 96] <= test266151307()
    require (32 * mem[mem[96 len 4], 2793967723846 + 96]) + 32 >= 0 and ceil32(return_data.size) + (32 * mem[mem[96 len 4], 2793967723846 + 96]) + 128 <= test266151307()
    mem[64] = ceil32(return_data.size) + (32 * mem[mem[96 len 4], 2793967723846 + 96]) + 128
    mem[ceil32(return_data.size) + 96] = _18
    require return_data.size >= _17 + (32 * _18) + 32
    mem[ceil32(return_data.size) + 128 len 32 * _18] = mem[_17 + 128 len 32 * _18]
    require 0 < _18
    if 100 * mem[ceil32(return_data.size) + 128] / 100 != mem[ceil32(return_data.size) + 128]:
        revert with 0, 'ds-math-mul-overflow'
    mem[mem[64]] = 100 * mem[ceil32(return_data.size) + 128] / 90
    return memory
      from mem[64]
       len 32
}

function testHatch1(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(this.address)
    staticcall this.address.0xf851a440 with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not proxy admin'
    require ext_code.size(nftContractAddress)
    call nftContractAddress.mint(uint256 arg1, bool arg2) with:
         gas gas_remaining wei
        args 1, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 100] = this.address
    mem[ceil32(return_data.size) + 132] = 0
    require ext_code.size(nftContractAddress)
    staticcall nftContractAddress.0x2f745c59 with:
            gas gas_remaining wei
           args address(this.address), 0
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(nftContractAddress)
    staticcall nftContractAddress.getTokenTraits(uint256 arg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    mem[(2 * ceil32(return_data.size)) + 96 len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require bool((4 * ceil32(return_data.size)) + 416 <= test266151307())
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[32] == ext_call.return_data[63 len 1]
    require ext_call.return_data[64] == ext_call.return_data[95 len 1]
    require ext_call.return_data[96] == ext_call.return_data[127 len 1]
    require ext_call.return_data[128] == ext_call.return_data[159 len 1]
    require ext_call.return_data[160] == ext_call.return_data[191 len 1]
    require ext_call.return_data[192] == ext_call.return_data[223 len 1]
    require ext_call.return_data[224] == ext_call.return_data[255 len 1]
    require ext_call.return_data[256] == ext_call.return_data[287 len 1]
    require ext_call.return_data[288] == ext_call.return_data[319 len 1]
    mem[(4 * ceil32(return_data.size)) + 384] = ext_call.return_data[288]
    if ext_call.return_data[0]:
        revert with 0, 'is sheep'
    mem[(4 * ceil32(return_data.size)) + 416] = 0xfb3bdb4100000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 420] = 20000 * 10^18
    mem[(4 * ceil32(return_data.size)) + 452] = 128
    mem[(4 * ceil32(return_data.size)) + 548] = pATH_BNB_TOKEN.length
    mem[0] = 5
    idx = 0
    s = 0
    t = (4 * ceil32(return_data.size)) + 580
    while idx < pATH_BNB_TOKEN.length:
        mem[t] = address(pATH_BNB_TOKEN[s])
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 484] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 516] = block.timestamp + 1200
    require ext_code.size(swapContractAddress)
    call swapContractAddress.swapETHForExactTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 20000 * 10^18, 128, msg.sender, block.timestamp + 1200, pATH_BNB_TOKEN.length, mem[(4 * ceil32(return_data.size)) + 580 len 32 * pATH_BNB_TOKEN.length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 416 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 416
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + 416 len 4], 4656612873077 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], 4656612873077 + 447 < (4 * ceil32(return_data.size)) + return_data.size + 416
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], 4656612873077 + 416] <= test266151307()
    require (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], 4656612873077 + 416]) + 32 >= 0 and (6 * ceil32(return_data.size)) + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], 4656612873077 + 416]) + 448 <= test266151307()
    require return_data.size >= mem[(4 * ceil32(return_data.size)) + 416 len 4], 4656612873077 + (32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 416 len 4], 4656612873077 + 416]) + 32
    call tx.origin with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initAdmin() {
    require ext_code.size(this.address)
    staticcall this.address.0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'not proxy admin'
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1[address(msg.sender)] = 1
    nftContractAddress = 0x1d293cad3476f064cb684a37ede558f8c1114a7a
    tokenContractAddress = 0xa46346bc9d110907b5ace36b53263320baf1cd21
    sub_d03e8a41Address = 0x567f2323251f0aab15c8dfb1967e4e8a7d42aee
    sub_755da6e7Address = 0x9ef1b8c0e4f7dc8bf5719ea496883dc6401d5b2e
    mem[ceil32(return_data.size) + 96] = 0xbb4cdb9cbd36b01bd1cbaebf2de08d9173bc095c
    mem[ceil32(return_data.size) + 128] = 0xa46346bc9d110907b5ace36b53263320baf1cd21
    pATH_BNB_TOKEN.length = 2
    s = 0
    idx = ceil32(return_data.size) + 96
    while ceil32(return_data.size) + 160 > idx:
        address(pATH_BNB_TOKEN[s]) = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while pATH_BNB_TOKEN.length > idx:
        uint256(pATH_BNB_TOKEN[idx]) = 0
        idx = idx + 1
        continue 
    swapContractAddress = 0x10ed43c718714eb63d5aa57b78b54704e256024e
    mem[ceil32(return_data.size) + 164] = nftContractAddress
    mem[ceil32(return_data.size) + 196] = 100000000 * 10^18
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args nftContractAddress, 100000000 * 10^18
    mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 160] = 15
    mem[(2 * ceil32(return_data.size)) + 192] = 50
    mem[(2 * ceil32(return_data.size)) + 224] = 200
    mem[(2 * ceil32(return_data.size)) + 256] = 250
    mem[(2 * ceil32(return_data.size)) + 288] = 255
    stor24.length = 5
    s = 0
    idx = (2 * ceil32(return_data.size)) + 160
    while (2 * ceil32(return_data.size)) + 320 > idx:
        stor24 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor24
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 5
    s = sha3(24)
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-3 * None + 3 / 32) + (None * None + 3 / 32)
    while stor24.length + 31 / 32 > idx:
        stor24[idx] = 0
        idx = idx + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 320] = 4
    mem[(2 * ceil32(return_data.size)) + 352] = 4
    mem[(2 * ceil32(return_data.size)) + 384] = 4
    mem[(2 * ceil32(return_data.size)) + 416] = 4
    mem[(2 * ceil32(return_data.size)) + 448] = 4
    stor42.length = 5
    s = 0
    idx = (2 * ceil32(return_data.size)) + 320
    while (2 * ceil32(return_data.size)) + 480 > idx:
        stor42 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor42
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 5
    s = sha3(42)
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-3 * None + 3 / 32) + (None * None + 3 / 32)
    while stor42.length + 31 / 32 > idx:
        stor42[idx] = 0
        idx = idx + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 480] = 190
    mem[(2 * ceil32(return_data.size)) + 512] = 215
    mem[(2 * ceil32(return_data.size)) + 544] = 240
    mem[(2 * ceil32(return_data.size)) + 576] = 100
    mem[(2 * ceil32(return_data.size)) + 608] = 110
    mem[(2 * ceil32(return_data.size)) + 640] = 135
    mem[(2 * ceil32(return_data.size)) + 672] = 160
    mem[(2 * ceil32(return_data.size)) + 704] = 185
    mem[(2 * ceil32(return_data.size)) + 736] = 80
    mem[(2 * ceil32(return_data.size)) + 768] = 210
    mem[(2 * ceil32(return_data.size)) + 800] = 235
    mem[(2 * ceil32(return_data.size)) + 832] = 240
    mem[(2 * ceil32(return_data.size)) + 864] = 80
    mem[(2 * ceil32(return_data.size)) + 896] = 80
    mem[(2 * ceil32(return_data.size)) + 928] = 100
    mem[(2 * ceil32(return_data.size)) + 960] = 100
    mem[(2 * ceil32(return_data.size)) + 992] = 100
    mem[(2 * ceil32(return_data.size)) + 1024] = 245
    mem[(2 * ceil32(return_data.size)) + 1056] = 250
    mem[(2 * ceil32(return_data.size)) + 1088] = 255
    stor25.length = 20
    s = 0
    idx = (2 * ceil32(return_data.size)) + 480
    while (2 * ceil32(return_data.size)) + 1120 > idx:
        stor25 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor25
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 20
    s = sha3(25)
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-18 * None + 3 / 32) + (None * None + 3 / 32)
    while stor25.length + 31 / 32 > idx:
        stor25[idx] = 0
        idx = idx + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 1120] = 1
    mem[(2 * ceil32(return_data.size)) + 1152] = 2
    mem[(2 * ceil32(return_data.size)) + 1184] = 4
    mem[(2 * ceil32(return_data.size)) + 1216] = 0
    mem[(2 * ceil32(return_data.size)) + 1248] = 5
    mem[(2 * ceil32(return_data.size)) + 1280] = 6
    mem[(2 * ceil32(return_data.size)) + 1312] = 7
    mem[(2 * ceil32(return_data.size)) + 1344] = 9
    mem[(2 * ceil32(return_data.size)) + 1376] = 0
    mem[(2 * ceil32(return_data.size)) + 1408] = 10
    mem[(2 * ceil32(return_data.size)) + 1440] = 11
    mem[(2 * ceil32(return_data.size)) + 1472] = 17
    mem[(2 * ceil32(return_data.size)) + 1504] = 0
    mem[(2 * ceil32(return_data.size)) + 1536] = 0
    mem[(2 * ceil32(return_data.size)) + 1568] = 0
    mem[(2 * ceil32(return_data.size)) + 1600] = 0
    mem[(2 * ceil32(return_data.size)) + 1632] = 4
    mem[(2 * ceil32(return_data.size)) + 1664] = 18
    mem[(2 * ceil32(return_data.size)) + 1696] = 19
    mem[(2 * ceil32(return_data.size)) + 1728] = 19
    stor43.length = 20
    s = 0
    idx = (2 * ceil32(return_data.size)) + 1120
    while (2 * ceil32(return_data.size)) + 1760 > idx:
        stor43 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor43
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 20
    s = sha3(43)
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-18 * None + 3 / 32) + (None * None + 3 / 32)
    while stor43.length + 31 / 32 > idx:
        stor43[idx] = 0
        idx = idx + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 1760] = 255
    mem[(2 * ceil32(return_data.size)) + 1792] = 30
    mem[(2 * ceil32(return_data.size)) + 1824] = 60
    mem[(2 * ceil32(return_data.size)) + 1856] = 60
    mem[(2 * ceil32(return_data.size)) + 1888] = 150
    mem[(2 * ceil32(return_data.size)) + 1920] = 156
    stor26.length = 6
    s = 0
    idx = (2 * ceil32(return_data.size)) + 1760
    while (2 * ceil32(return_data.size)) + 1952 > idx:
        stor26 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor26
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 6
    s = sha3(26)
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-4 * None + 3 / 32) + (None * None + 3 / 32)
    while stor26.length + 31 / 32 > idx:
        stor26[idx] = 0
        idx = idx + 1
        continue 
    mem[(2 * ceil32(return_data.size)) + 1952] = 0
    mem[(2 * ceil32(return_data.size)) + 1984] = 0
    mem[(2 * ceil32(return_data.size)) + 2016] = 0
    mem[(2 * ceil32(return_data.size)) + 2048] = 0
    mem[(2 * ceil32(return_data.size)) + 2080] = 0
    mem[(2 * ceil32(return_data.size)) + 2112] = 0
    stor44.length = 6
    s = 0
    idx = (2 * ceil32(return_data.size)) + 1952
    while (2 * ceil32(return_data.size)) + 2144 > idx:
        stor44 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor44
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 6
    s = sha3(44)
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    # nil
}



}
