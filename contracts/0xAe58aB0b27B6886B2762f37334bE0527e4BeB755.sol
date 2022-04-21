contract main {




// =====================  Runtime code  =====================


const sub_30c76671(?) = 10

const sub_3455569f(?) = 206

const _totalSupply = 206

const sub_8b466443(?) = 100

const TOTAL_SUPPLY = 206


address tokenAddress;
uint256 sub_5feca4a4;
uint256 sub_fd492610;
mapping of uint256 lastDividendAt;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint16 stor4; offset 160
address escrowAddress;
uint256 sub_40fabb79;
uint256 sub_94fa30e8;
address sub_0f51728eAddress;
address royaltyReceiverAddress;
mapping of struct market;

function sub_0f51728e(?) {
    return sub_0f51728eAddress
}

function market(uint256 arg1) {
    require calldata.size - 4 >= 32
    return market[arg1].field_0, address(market[arg1].field_256)
}

function sub_40fabb79(?) {
    return sub_40fabb79
}

function sub_5feca4a4(?) {
    return sub_5feca4a4
}

function sub_94fa30e8(?) {
    return sub_94fa30e8
}

function royaltyReceiver() {
    return royaltyReceiverAddress
}

function lastDividendAt(uint256 arg1) {
    require calldata.size - 4 >= 32
    return lastDividendAt[arg1]
}

function escrow() {
    return escrowAddress
}

function token() {
    return tokenAddress
}

function sub_fd492610(?) {
    return sub_fd492610
}

function _fallback() payable {
    revert
}

function sub_cf12969b(?) {
    require calldata.size - 4 >= 32
    if sub_fd492610 < lastDividendAt[arg1]:
        revert with 0, 17
    return (sub_fd492610 - lastDividendAt[arg1])
}

function reflectToOwners() payable {
    if sub_5feca4a4 > !msg.value:
        revert with 0, 17
    sub_5feca4a4 += msg.value
    if sub_fd492610 > !(msg.value / 206):
        revert with 0, 17
    sub_fd492610 += msg.value / 206
}

function withdraw() {
    require ext_code.size(escrowAddress)
    call escrowAddress.0x51cff8d9 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function deposit(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(escrowAddress)
    call escrowAddress.0xf340fa01 with:
       value msg.value wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function depositsOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(escrowAddress)
    staticcall escrowAddress.0xe3a9db1a with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 < 96 or ceil32(ceil32(arg4.length)) + 97 > test266151307():
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function sub_6457bd04(?) {
    require calldata.size - 4 >= 32
    if not address(market[arg1].field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'removeFromMarket:: Token not currently on the market'
    if address(market[arg1].field_256) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'removeFromMarket:: Removing token that does not belong to sender'
    market[arg1].field_0 = 0
    address(market[arg1].field_256) = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x76f12a2b: arg1
}

function sub_7fb5f7a6(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'addToMarket:: Sender is not the token owner'
    market[arg1].field_0 = arg2
    address(market[arg1].field_256) = msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42842e0e with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ForSale(arg1, arg2);
}

function initialize(address arg1, uint256 arg2, uint256 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg4 == arg4
    require arg5 == arg5
    if not uint8(stor4.field_168):
        if uint8(stor4.field_160):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor4.field_168):
            uint16(stor4.field_160) = 257
    create contract with 0 wei
                    code: code.data[6463 len 1522]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    escrowAddress = address(create.new_address)
    sub_40fabb79 = arg2
    sub_94fa30e8 = arg3
    tokenAddress = arg1
    royaltyReceiverAddress = arg5
    sub_0f51728eAddress = arg4
    if not uint8(stor4.field_168):
        uint8(stor4.field_168) = 0
}

function claimReward(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.getApproved(uint256 rg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'claimReward:: Only owner or approved can claim rewards'
    if sub_fd492610 < lastDividendAt[arg1]:
        revert with 0, 17
    lastDividendAt[arg1] = sub_fd492610
    require ext_code.size(escrowAddress)
    call escrowAddress.0xf340fa01 with:
       value sub_fd492610 - lastDividendAt[arg1] wei
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1ab01328(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 59
            _24 = mem[64]
            mem[64] = mem[64] + 64
            mem[_24] = market[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_24 + 32] = address(market[cd[((32 * idx) + cd[4] + 36)]].field_256)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _24
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _26 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = 128
        t = mem[64] + 64
        while ('cd', 4).length < _26:
            _40 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_40 + 44 len 20]
            s = ('cd', 4).length + 1
            s = s + 32
            t = t + 64
            continue 
    else:
        mem[64] = (32 * ('cd', 4).length) + 192
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[128] = (32 * ('cd', 4).length) + 128
        s = 128
        idx = ('cd', 4).length
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * ('cd', 4).length) + 128] = 0
            mem[(32 * ('cd', 4).length) + 160] = 0
            mem[s + 32] = (32 * ('cd', 4).length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 59
            _46 = mem[64]
            mem[64] = mem[64] + 64
            mem[_46] = market[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_46 + 32] = address(market[cd[((32 * idx) + cd[4] + 36)]].field_256)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _46
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _48 = mem[96]
        mem[mem[64] + 32] = mem[96]
        s = 0
        s = 128
        t = mem[64] + 64
        while ('cd', 4).length < _48:
            _53 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_53 + 44 len 20]
            s = ('cd', 4).length + 1
            s = s + 32
            t = t + 64
            continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function getTotalAmountOwed() {
    mem[100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _16 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[0] = mem[_16]
        mem[32] = 3
        if sub_fd492610 < lastDividendAt[mem[0]]:
            revert with 0, 17
        if s > !(sub_fd492610 - lastDividendAt[mem[0]]):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_fd492610 - lastDividendAt[mem[0]]
        continue 
    return (s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0])
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not address(market[arg1].field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'buy:: Token not currently on the market'
    if msg.sender == address(market[arg1].field_256):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'buy:: Owner of a token cannot buy their own token'
    if msg.value < market[arg1].field_0:
        revert with 0, 'buy:: Not enough sent'
    if msg.value and sub_40fabb79 > -1 / msg.value:
        revert with 0, 17
    if msg.value and sub_94fa30e8 > -1 / msg.value:
        revert with 0, 17
    if msg.value and 100 > -1 / msg.value:
        revert with 0, 17
    if msg.value and 10 > -1 / msg.value:
        revert with 0, 17
    if msg.value < msg.value * sub_40fabb79 / 10000:
        revert with 0, 17
    if msg.value - (msg.value * sub_40fabb79 / 10000) < msg.value * sub_94fa30e8 / 10000:
        revert with 0, 17
    if msg.value - (msg.value * sub_40fabb79 / 10000) - (msg.value * sub_94fa30e8 / 10000) < 100 * msg.value / 10000:
        revert with 0, 17
    if msg.value - (msg.value * sub_40fabb79 / 10000) - (msg.value * sub_94fa30e8 / 10000) - (100 * msg.value / 10000) < 10 * msg.value / 10000:
        revert with 0, 17
    market[arg1].field_0 = 0
    address(market[arg1].field_256) = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42842e0e with:
         gas gas_remaining wei
        args address(this.address), msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_fd492610 < lastDividendAt[arg1]:
        revert with 0, 17
    lastDividendAt[arg1] = sub_fd492610
    require ext_code.size(escrowAddress)
    call escrowAddress.0xf340fa01 with:
       value sub_fd492610 - lastDividendAt[arg1] wei
         gas gas_remaining wei
        args address(market[arg1].field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowAddress)
    call escrowAddress.0xf340fa01 with:
       value msg.value - (msg.value * sub_40fabb79 / 10000) - (msg.value * sub_94fa30e8 / 10000) - (100 * msg.value / 10000) - (10 * msg.value / 10000) wei
         gas gas_remaining wei
        args address(market[arg1].field_256)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(escrowAddress)
    call escrowAddress.0xf340fa01 with:
       value msg.value * sub_94fa30e8 / 10000 wei
         gas gas_remaining wei
        args sub_0f51728eAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x6352211e with:
            gas gas_remaining wei
           args 206
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(escrowAddress)
    call escrowAddress.0xf340fa01 with:
       value msg.value - (msg.value * sub_40fabb79 / 10000) - (msg.value * sub_94fa30e8 / 10000) - (100 * msg.value / 10000) - (10 * msg.value / 10000) wei
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_5feca4a4 > !(msg.value * sub_40fabb79 / 10000):
        revert with 0, 17
    sub_5feca4a4 += msg.value * sub_40fabb79 / 10000
    if sub_fd492610 > !(msg.value * sub_40fabb79 / 10000 / 206):
        revert with 0, 17
    sub_fd492610 += msg.value * sub_40fabb79 / 10000 / 206
    emit 0xa553f030: address(market[arg1].field_256), msg.sender, arg1
    call royaltyReceiverAddress with:
       value 100 * msg.value / 10000 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Transfer failed.'
}

function claimRewards() {
    mem[100] = msg.sender
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = idx
        require ext_code.size(tokenAddress)
        staticcall tokenAddress.tokenOfOwnerByIndex(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args msg.sender, idx
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _19 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _20 = mem[_19]
        mem[0] = mem[_19]
        _23 = sha3(mem[0], 3)
        if sub_fd492610 < lastDividendAt[mem[0]]:
            revert with 0, 17
        if s > !(sub_fd492610 - lastDividendAt[mem[0]]):
            revert with 0, 17
        mem[0] = _20
        mem[32] = 3
        lastDividendAt[_20] = sub_fd492610
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + sub_fd492610 - stor[_23]
        continue 
    require ext_code.size(escrowAddress)
    if s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]:
        call escrowAddress.0xf340fa01 with:
           value s * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] wei
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call escrowAddress.0x51cff8d9 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
