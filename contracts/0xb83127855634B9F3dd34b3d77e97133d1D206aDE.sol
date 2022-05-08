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
array of uint256 stor42;
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
    return pATH_TOKEN_BNB[arg1].field_0
}

function BuyContract() {
    return buyContractAddress
}

function PATH_BNB_TOKEN(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < pATH_BNB_TOKEN.length
    return pATH_BNB_TOKEN[arg1]
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

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(adminAddress)
    call msg.sender with:
       value arg1 wei
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
    if not uint16(sha3(tx.origin, block.hash(block.number - 1), block.timestamp, ext_call.return_data[0] + 1)) % 10:
        revert with 0, 'is sheep'
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
    nftContractAddress = 0x5db699cf7193288638e6002ccb9cc9fad3c06c94
    tokenContractAddress = 0xd17d39460b0b8b57a68ca8b69aab6f611740abfc
    require ext_code.size(0xd17d39460b0b8b57a68ca8b69aab6f611740abfc)
    call 0xd17d39460b0b8b57a68ca8b69aab6f611740abfc.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0x5db699cf7193288638e6002ccb9cc9fad3c06c94, 100000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
        mem[idx + 32] = pATH_TOKEN_BNB[s].field_256
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
        mem[t] = pATH_BNB_TOKEN[s]
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
        mem[t] = pATH_BNB_TOKEN[s]
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



}
