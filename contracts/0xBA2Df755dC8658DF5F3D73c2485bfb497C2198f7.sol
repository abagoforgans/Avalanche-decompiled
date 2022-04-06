contract main {




// =====================  Runtime code  =====================


address stor0;
address WETHAddress;
address SAIAddress;
address USDCAddress;
address DAIAddress;
mapping of uint256 currencies;
uint256 loan;
address stor7;
address stor8;
uint256 stor10;
address stor11;
address stor12;
address stor13;

function SAI() {
    return SAIAddress
}

function currencies(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return currencies[arg1]
}

function USDC() {
    return USDCAddress
}

function WETH() {
    return WETHAddress
}

function loan() {
    return loan
}

function DAI() {
    return DAIAddress
}

function _fallback() payable {
  stop
}

function tokenToMarketId(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not currencies[address(arg1)]:
        revert with 0, 'FlashLoan: Unsupported token'
    return (currencies[address(arg1)] - 1)
}

function getWeth() payable {
    if stor7 != msg.sender:
        revert with 0, 'caller is not the owner!'
    call WETHAddress with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'failed to get weth'
}

function withdrawEther() {
    if stor7 != msg.sender:
        revert with 0, 'caller is not the owner!'
    call stor7 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approveWeth(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0, 'caller is not the owner!'
    require ext_code.size(WETHAddress)
    call WETHAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor13, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function withdrawToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor7 != msg.sender:
        revert with 0, 'caller is not the owner!'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor7, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function zrxSwap(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    if stor7 != msg.sender:
        revert with 0, 'caller is not the owner!'
    mem[ceil32(arg3.length) + 132] = stor12
    mem[ceil32(arg3.length) + 164] = arg2
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor12, arg2
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, ext_call.return_data[4 len 28] == bool(0, ext_call.return_data[4 len 28])
    mem[ceil32(arg3.length) + ceil32(return_data.size) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if ceil32(arg3.length) > arg3.length:
        mem[ceil32(arg3.length) + ceil32(return_data.size) + arg3.length + 128] = 0
    call stor11.mem[ceil32(arg3.length) + ceil32(return_data.size) + 128 len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + ceil32(return_data.size) + 132 len arg3.length - 4]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor12, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function oneSplitSwap(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require (32 * arg5.length) + 128 <= test266151307() and (32 * arg5.length) + 128 >= 96
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    idx = 0
    s = arg5 + 36
    t = 128
    while idx < arg5.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor7 != msg.sender:
        revert with 0, 'caller is not the owner!'
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor8, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(32 * arg5.length) + ceil32(return_data.size) + 128] = 0xe2a7515e00000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor8)
    call stor8.swap(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256[] rg5, uint256 rg6) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3, arg4, Array(len=arg5.length, data=mem[128 len 32 * arg5.length]), stor10
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor8, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getFlashloan(address arg1, uint256 arg2, address arg3, bytes arg4, uint256 arg5, uint256[] arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    if stor7 != msg.sender:
        revert with 0, 'caller is not the owner!'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = arg1
    mem[ceil32(return_data.size) + 160] = arg2
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 224] = arg3
    mem[ceil32(return_data.size) + 256] = 224
    mem[ceil32(return_data.size) + 352] = arg4.length
    mem[ceil32(return_data.size) + 384 len arg4.length] = arg4[all]
    mem[ceil32(return_data.size) + arg4.length + 384] = 0
    mem[ceil32(return_data.size) + 288] = arg5
    mem[ceil32(return_data.size) + 320] = ceil32(arg4.length) + 256
    mem[ceil32(return_data.size) + ceil32(arg4.length) + 384] = arg6.length
    require arg6.length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[ceil32(return_data.size) + ceil32(arg4.length) + 416 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[ceil32(return_data.size) + 96] = ceil32(arg4.length) + (32 * arg6.length) + 288
    mem[ceil32(return_data.size) + ceil32(arg4.length) + (32 * arg6.length) + 420] = stor0
    mem[ceil32(return_data.size) + ceil32(arg4.length) + (32 * arg6.length) + 452] = arg2 + 1
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor0, arg2 + 1
    mem[ceil32(return_data.size) + ceil32(arg4.length) + (32 * arg6.length) + 416] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 416] = 1
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 480] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 512] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 544] = 3
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 672] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 704] = 0
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 1056
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 928] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 960] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 992] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 1024] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 736] = (2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 928
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 768] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 800] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 832] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 864] = 0
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 896] = 96
    mem[var158002] = (2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 672
    s = (2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 672
    s = (2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 672
    s = var158002
    idx = var158003
    while idx - 1:
        _110 = mem[64]
        mem[64] = mem[64] + 256
        mem[_110] = 0
        mem[_110 + 32] = 0
        mem[64] = mem[64] + 128
        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 928] = 0
        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 960] = 0
        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 992] = 0
        mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 1024] = 0
        mem[_110 + 64] = (2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 928
        mem[_110 + 96] = 0
        mem[_110 + 128] = 0
        mem[_110 + 160] = 0
        mem[_110 + 192] = 0
        mem[_110 + 224] = 96
        mem[s + 32] = _110
        s = _110
        s = _110
        s = s + 32
        idx = idx - 1
        continue 
    _111 = mem[64]
    mem[64] = mem[64] + 64
    mem[_111] = this.address
    mem[_111 + 32] = 0
    require 0 < mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 416]
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 448] = _111
    _113 = mem[64]
    mem[64] = mem[64] + 128
    mem[_113] = 0
    mem[_113 + 32] = 0
    mem[_113 + 64] = 0
    mem[_113 + 96] = 0
    _114 = mem[64]
    mem[64] = mem[64] + 128
    mem[_114] = 0
    mem[_114 + 32] = 0
    mem[_114 + 64] = 0
    mem[_114 + 96] = arg2
    _115 = mem[64]
    mem[64] = mem[64] + 256
    mem[_115] = 0
    mem[_115 + 32] = 0
    _116 = mem[64]
    mem[64] = mem[64] + 128
    mem[_116] = 0
    mem[_116 + 32] = 0
    mem[_116 + 64] = 0
    mem[_116 + 96] = 0
    mem[_115 + 128] = 0
    mem[_115 + 192] = 0
    mem[_115 + 224] = 96
    mem[_115] = 1
    mem[_115 + 32] = 0
    mem[_115 + 64] = _114
    mem[0] = arg1
    mem[32] = 5
    if not currencies[address(arg1)]:
        revert with 0, 'FlashLoan: Unsupported token'
    mem[_115 + 96] = currencies[address(arg1)] - 1
    mem[_115 + 160] = this.address
    require 0 < mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 544]
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 576] = _115
    _120 = mem[64]
    mem[64] = mem[64] + 256
    mem[_120] = 0
    mem[_120 + 32] = 0
    _121 = mem[64]
    mem[64] = mem[64] + 128
    mem[_121] = 0
    mem[_121 + 32] = 0
    mem[_121 + 64] = 0
    mem[_121 + 96] = 0
    mem[_120 + 64] = _121
    mem[_120 + 96] = 0
    mem[_120 + 128] = 0
    mem[_120 + 192] = 0
    mem[_120] = 8
    mem[_120 + 32] = 0
    mem[_120 + 160] = this.address
    mem[_120 + 224] = ceil32(return_data.size) + 96
    require 1 < mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 544]
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 608] = _120
    _124 = mem[64]
    mem[64] = mem[64] + 256
    mem[_124] = 0
    mem[_124 + 32] = 0
    _125 = mem[64]
    mem[64] = mem[64] + 128
    mem[_125] = 0
    mem[_125 + 32] = 0
    mem[_125 + 64] = 0
    mem[_125 + 96] = 0
    mem[_124 + 64] = _125
    mem[_124 + 96] = 0
    mem[_124 + 128] = 0
    mem[_124 + 160] = 0
    mem[_124 + 192] = 0
    mem[_124 + 224] = 96
    _126 = mem[64]
    mem[64] = mem[64] + 128
    mem[_126] = 0
    mem[_126 + 32] = 0
    mem[_126 + 64] = 0
    mem[_126 + 96] = 0
    _127 = mem[64]
    mem[64] = mem[64] + 128
    mem[_127] = 1
    mem[_127 + 32] = 0
    mem[_127 + 64] = 0
    mem[_127 + 96] = arg2 + 1
    mem[_124] = 0
    mem[_124 + 32] = 0
    mem[_124 + 64] = _127
    mem[0] = arg1
    mem[32] = 5
    if not currencies[address(arg1)]:
        revert with 0, 'FlashLoan: Unsupported token'
    mem[_124 + 96] = currencies[address(arg1)] - 1
    mem[_124 + 160] = this.address
    require 2 < mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 544]
    mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 640] = _124
    _131 = mem[64]
    mem[mem[64]] = 0xa67a6a4500000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 64
    _132 = mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 416]
    mem[mem[64] + 68] = mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 416]
    idx = 0
    s = (2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 448
    t = mem[64] + 100
    while idx < _132:
        _154 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_154 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    mem[_131 + 36] = (64 * _132) + 96
    _156 = mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 544]
    mem[_131 + (64 * _132) + 100] = mem[(2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 544]
    idx = 0
    s = (2 * ceil32(return_data.size)) + ceil32(arg4.length) + (32 * arg6.length) + 576
    t = _131 + (64 * _132) + (32 * _156) + 132
    u = _131 + (64 * _132) + 132
    while idx < _156:
        mem[u] = t + -_131 + -(64 * _132) - 132
        _174 = mem[s]
        require mem[mem[s]] < 9
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_174 + 32]
        _178 = mem[_174 + 64]
        mem[t + 64] = bool(mem[mem[_174 + 64]])
        require mem[_178 + 32] < 1
        mem[t + 96] = mem[_178 + 32]
        require mem[_178 + 64] < 1
        mem[t + 128] = mem[_178 + 64]
        mem[t + 160] = mem[_178 + 96]
        mem[t + 192] = mem[_174 + 96]
        mem[t + 224] = mem[_174 + 128]
        mem[t + 256] = mem[_174 + 172 len 20]
        mem[t + 288] = mem[_174 + 192]
        _187 = mem[_174 + 224]
        mem[t + 320] = 352
        _188 = mem[_187]
        mem[t + 352] = mem[_187]
        v = 0
        while v < _188:
            mem[t + v + 384] = mem[_187 + v + 32]
            v = v + 32
            continue 
        if ceil32(_188) > _188:
            mem[t + _188 + 384] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(_188) + 384
        u = u + 32
        continue 
    require ext_code.size(stor0)
    call stor0.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len t + -mem[64] - 4]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function trade(address arg1, address arg2, uint256 arg3, bytes arg4, uint256 arg5, uint256[] arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require ceil32(arg4.length) + (32 * arg6.length) + 160 <= test266151307() and (32 * arg6.length) + 160 >= 128
    mem[ceil32(arg4.length) + 128] = arg6.length
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    idx = 0
    s = arg6 + 36
    t = ceil32(arg4.length) + 160
    while idx < arg6.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor7 != msg.sender:
        revert with 0, 'caller is not the owner!'
    mem[ceil32(arg4.length) + (32 * arg6.length) + 164] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + (32 * arg6.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(arg4.length) + (32 * arg6.length) + ceil32(return_data.size) + 164] = stor12
    mem[ceil32(arg4.length) + (32 * arg6.length) + ceil32(return_data.size) + 196] = arg3
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor12, arg3
    mem[ceil32(arg4.length) + (32 * arg6.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 160 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if ceil32(arg4.length) > arg4.length:
        mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + arg4.length + 160] = 0
    call stor11.mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 160 len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 164 len arg4.length - 4]
    if not return_data.size:
        mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 164] = stor12
        mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 196] = 0
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor12, 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (6 * ceil32(return_data.size)) + 164] = stor8
        mem[ceil32(arg4.length) + (32 * arg6.length) + (6 * ceil32(return_data.size)) + 196] = 0
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor8, 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 160] = 0xe2a7515e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 164] = arg2
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 196] = arg1
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 228] = 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 260] = arg5
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 292] = 192
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 356] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 388 len 32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]] = mem[ceil32(arg4.length) + 160 len 32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 324] = stor10
        require ext_code.size(stor8)
        call stor8.swap(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256[] rg5, uint256 rg6) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 164 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 224]
    else:
        mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 160] = return_data.size
        mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = stor12
        mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor12, 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = stor8
        mem[ceil32(arg4.length) + (32 * arg6.length) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor8, 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = 0xe2a7515e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = arg2
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = arg1
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = arg5
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 192
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]] = mem[ceil32(arg4.length) + 160 len 32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor10
        require ext_code.size(stor8)
        call stor8.swap(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256[] rg5, uint256 rg6) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor8, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function arb(address arg1, address arg2, uint256 arg3, bytes arg4, uint256 arg5, uint256[] arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 <= test266151307() and ceil32(arg4.length) + 128 >= 96
    require arg4 + arg4.length + 36 <= calldata.size
    mem[128 len arg4.length] = arg4[all]
    mem[arg4.length + 128] = 0
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require ceil32(arg4.length) + (32 * arg6.length) + 160 <= test266151307() and (32 * arg6.length) + 160 >= 128
    mem[ceil32(arg4.length) + 128] = arg6.length
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    idx = 0
    s = arg6 + 36
    t = ceil32(arg4.length) + 160
    while idx < arg6.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if stor7 != msg.sender:
        revert with 0, 'caller is not the owner!'
    mem[ceil32(arg4.length) + (32 * arg6.length) + 164] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + (32 * arg6.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(arg4.length) + (32 * arg6.length) + ceil32(return_data.size) + 164] = this.address
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(arg4.length) + (32 * arg6.length) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 164] = stor12
    mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 196] = arg3
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor12, arg3
    mem[ceil32(arg4.length) + (32 * arg6.length) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 160 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
    if ceil32(arg4.length) > arg4.length:
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + arg4.length + 160] = 0
    call stor11.mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 160 len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 164 len arg4.length - 4]
    if not return_data.size:
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 164] = stor12
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 196] = 0
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor12, 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(arg4.length) + (32 * arg6.length) + (6 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(arg4.length) + (32 * arg6.length) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 164] = stor8
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 196] = 0
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor8, 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + 160] = 0xe2a7515e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + 164] = arg2
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + 196] = arg1
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + 228] = 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + 260] = arg5
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + 292] = 192
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + 356] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + 388 len 32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]] = mem[ceil32(arg4.length) + 160 len 32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + 324] = stor10
        require ext_code.size(stor8)
        call stor8.swap(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256[] rg5, uint256 rg6) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + 164 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 224]
    else:
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 160] = return_data.size
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = stor12
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0
        require ext_code.size(arg1)
        call arg1.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor12, 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(arg4.length) + (32 * arg6.length) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(arg4.length) + (32 * arg6.length) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = stor8
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0
        require ext_code.size(arg2)
        call arg2.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor8, 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = 0xe2a7515e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = arg2
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = arg1
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = arg5
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 192
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]] = mem[ceil32(arg4.length) + 160 len 32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]]
        mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor10
        require ext_code.size(stor8)
        call stor8.swap(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256[] rg5, uint256 rg6) with:
             gas gas_remaining wei
            args mem[ceil32(arg4.length) + (32 * arg6.length) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len (32 * Mask(8 * -ceil32(arg4.length) + arg4.length + 32, 0, 0), mem[arg4.length + 160 len -arg4.length + ceil32(arg4.length)]) + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor8, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'End balance must exceed start balance.'
}

function callFunction(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require calldata.size - 36 >= 64
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FlashLoan: could be called by DyDx pool only'
    require arg4.length >= 224
    require cd[(arg4 + 36)] == address(cd[(arg4 + 36)])
    require cd[(arg4 + 68)] == cd[(arg4 + 68)]
    require cd[(arg4 + 100)] == cd[(arg4 + 100)]
    require cd[(arg4 + 132)] == address(cd[(arg4 + 132)])
    require cd[(arg4 + 164)] <= test266151307()
    require arg4 + cd[(arg4 + 164)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 164)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 <= test266151307() and ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128 >= 96
    require cd[(arg4 + 164)] + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 68 <= arg4.length + 36
    mem[128 len cd[(arg4 + cd[(arg4 + 164)] + 36)]] = call.data[arg4 + cd[(arg4 + 164)] + 68 len cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128] = 0
    require cd[(arg4 + 196)] == cd[(arg4 + 196)]
    require cd[(arg4 + 228)] <= test266151307()
    require arg4 + cd[(arg4 + 228)] + 67 < arg4 + arg4.length + 36
    require cd[(arg4 + cd[(arg4 + 228)] + 36)] <= test266151307()
    require ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160 <= test266151307() and (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160 >= 128
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 128] = cd[(arg4 + cd[(arg4 + 228)] + 36)]
    require cd[(arg4 + 228)] + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 68 <= arg4.length + 36
    idx = 0
    s = arg4 + cd[(arg4 + 228)] + 68
    t = ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 160
    while idx < cd[(arg4 + cd[(arg4 + 228)] + 36)]:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 164] = this.address
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] - cd[(arg4 + 100)] != cd[(arg4 + 68)]:
        revert with 0, 'contract did not get the loan'
    loan = ext_call.return_data[0]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(return_data.size) + 164] = this.address
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + ceil32(return_data.size) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (2 * ceil32(return_data.size)) + 164] = this.address
    require ext_code.size(address(cd[(arg4 + 132)]))
    staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (2 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (4 * ceil32(return_data.size)) + 164] = stor12
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (4 * ceil32(return_data.size)) + 196] = cd[(arg4 + 68)]
    require ext_code.size(address(cd[(arg4 + 36)]))
    call address(cd[(arg4 + 36)]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor12, cd[(arg4 + 68)]
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (4 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 160 len ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)])] = call.data[arg4 + cd[(arg4 + 164)] + 68 len cd[(arg4 + cd[(arg4 + 164)] + 36)]], mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 128 len ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) - cd[(arg4 + cd[(arg4 + 164)] + 36)]]
    if ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) > cd[(arg4 + cd[(arg4 + 164)] + 36)]:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 160] = 0
    call stor11.mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 160 len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 164 len cd[(arg4 + cd[(arg4 + 164)] + 36)] - 4]
    if not return_data.size:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 164] = stor12
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 196] = 0
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor12, 0
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (7 * ceil32(return_data.size)) + 164] = this.address
        require ext_code.size(address(cd[(arg4 + 132)]))
        staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (7 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (8 * ceil32(return_data.size)) + 164] = stor8
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (8 * ceil32(return_data.size)) + 196] = 0
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor8, 0
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (8 * ceil32(return_data.size)) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + 160] = 0xe2a7515e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + 164] = address(cd[(arg4 + 132)])
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + 196] = address(cd[(arg4 + 36)])
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + 228] = 0
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + 260] = cd[(arg4 + 196)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + 292] = 192
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + 356] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 164)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + 388 len 32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 164)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)])]] = mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 160 len 32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 164)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)])]]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + 324] = stor10
        require ext_code.size(stor8)
        call stor8.swap(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256[] rg5, uint256 rg6) with:
             gas gas_remaining wei
            args mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + 164 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 164)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)])]) + 224]
    else:
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 160] = return_data.size
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = stor12
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0
        require ext_code.size(address(cd[(arg4 + 36)]))
        call address(cd[(arg4 + 36)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor12, 0
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (6 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = this.address
        require ext_code.size(address(cd[(arg4 + 132)]))
        staticcall address(cd[(arg4 + 132)]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (7 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = stor8
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = 0
        require ext_code.size(address(cd[(arg4 + 132)]))
        call address(cd[(arg4 + 132)]).approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor8, 0
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (8 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 161] = 0xe2a7515e00000000000000000000000000000000000000000000000000000000
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 165] = address(cd[(arg4 + 132)])
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 197] = address(cd[(arg4 + 36)])
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 229] = 0
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = cd[(arg4 + 196)]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 293] = 192
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 357] = Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 164)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)])]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 389 len 32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 164)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)])]] = mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + 160 len 32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 164)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)])]]
        mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = stor10
        require ext_code.size(stor8)
        call stor8.swap(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256[] rg5, uint256 rg6) with:
             gas gas_remaining wei
            args mem[ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + (32 * cd[(arg4 + cd[(arg4 + 228)] + 36)]) + (10 * ceil32(return_data.size)) + ceil32(return_data.size) + 165 len (32 * Mask(8 * -ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)]) + cd[(arg4 + cd[(arg4 + 164)] + 36)] + 32, 0, 0), mem[cd[(arg4 + cd[(arg4 + 164)] + 36)] + 160 len -cd[(arg4 + cd[(arg4 + 164)] + 36)] + ceil32(cd[(arg4 + cd[(arg4 + 164)] + 36)])]) + 224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(cd[(arg4 + 132)]))
    call address(cd[(arg4 + 132)]).approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor8, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(address(cd[(arg4 + 36)]))
    staticcall address(cd[(arg4 + 36)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        revert with 0, 'End balance must exceed start balance.'
}



}
