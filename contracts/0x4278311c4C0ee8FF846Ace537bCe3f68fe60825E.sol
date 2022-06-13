contract main {




// =====================  Runtime code  =====================


const name = 'Millium'

const decimals = 18

const symbol = ''


mapping of uint256 balances;
mapping of uint256 red;
mapping of uint256 green;
mapping of uint256 blue;
uint256 _totalSupply;
mapping of uint256 allowance;
address stor6;
address stor7;
mapping of uint256 average_ethSpent;
mapping of uint256 average_buyInTimeSum;
mapping of uint256 resolveWeight;
mapping of uint256 payouts;
mapping of uint256 sellSideDivs;
uint256 dissolvingResolves;
uint256 sumOfInputETH;
uint256 sumOfInputTime;
uint256 sumOfOutputETH;
uint256 sumOfOutputTime;
uint256 earningsOffset;
uint256 earningsPerResolve;
address resolveTokenAddress;
address stor21;

function totalSupply() payable {
    return _totalSupply
}

function green(address arg1) payable {
    require calldata.size - 4 >= 32
    return green[arg1]
}

function sumOfOutputETH() payable {
    return sumOfOutputETH
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function dissolvingResolves() payable {
    return dissolvingResolves
}

function _totalSupply() payable {
    return _totalSupply
}

function sellSideDivs(address arg1) payable {
    require calldata.size - 4 >= 32
    return sellSideDivs[arg1]
}

function earningsPerResolve() payable {
    return earningsPerResolve
}

function payouts(address arg1) payable {
    require calldata.size - 4 >= 32
    return payouts[arg1]
}

function earningsOffset() payable {
    return earningsOffset
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function average_buyInTimeSum(address arg1) payable {
    require calldata.size - 4 >= 32
    return average_buyInTimeSum[arg1]
}

function average_ethSpent(address arg1) payable {
    require calldata.size - 4 >= 32
    return average_ethSpent[arg1]
}

function red(address arg1) payable {
    require calldata.size - 4 >= 32
    return red[arg1]
}

function resolveToken() payable {
    return resolveTokenAddress
}

function sumOfInputTime() payable {
    return sumOfInputTime
}

function blue(address arg1) payable {
    require calldata.size - 4 >= 32
    return blue[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function resolveWeight(address arg1) payable {
    require calldata.size - 4 >= 32
    return resolveWeight[arg1]
}

function sumOfOutputTime() payable {
    return sumOfOutputTime
}

function sumOfInputETH() payable {
    return sumOfInputETH
}

function _fallback() payable {
    revert
}

function isContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if not ext_code.size(arg1):
        return 0
    return 1
}

function avgHodl() payable {
    require sumOfInputETH - sumOfOutputETH
    return (block.timestamp - (Mask(192, 64, sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) >> 64))
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function resolveEarnings(address arg1) payable {
    require calldata.size - 4 >= 32
    return (Mask(192, 64, (resolveWeight[address(arg1)] * earningsPerResolve) - payouts[address(arg1)]) >> 64)
}

function RGB_Ratio() payable {
    if balances[address(msg.sender)]:
        return red[address(msg.sender)] / balances[address(msg.sender)], 
               green[address(msg.sender)] / balances[address(msg.sender)],
               blue[address(msg.sender)] / balances[address(msg.sender)]
    else:
        return 0
}

function RGB_Ratio(address arg1) payable {
    require calldata.size - 4 >= 32
    if balances[address(arg1)]:
        return red[address(arg1)] / balances[address(arg1)], 
               green[address(arg1)] / balances[address(arg1)],
               blue[address(arg1)] / balances[address(arg1)]
    else:
        return 0
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if resolveTokenAddress != msg.sender:
        revert with 0, 'no want'
    resolveWeight[address(arg1)] += arg2
    dissolvingResolves += arg2
    payouts[address(arg1)] += arg2 * earningsPerResolve
    earningsOffset += arg2 * earningsPerResolve
    emit StakeResolves(arg2, Array(len=arg3.length, data=arg3[all]), arg1);
}

function fluxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not dissolvingResolves
    return 0
}

function buyPrice() payable {
    if 0 == _totalSupply:
        return 11 * 10^10
    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * _totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not dissolvingResolves
    return ((10000000000 * 10^18 * _totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18)
}

function sellPrice() payable {
    if 0 == _totalSupply:
        return (25 * 10^6 * 3600)
    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * _totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not dissolvingResolves
    require 0 <= (10000000000 * 10^18 * _totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
    return ((10000000000 * 10^18 * _totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18)
}

function calculateEthereumReceived(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= _totalSupply
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1)
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not dissolvingResolves
    require 0 <= (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    return ((25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18)
}

function calculateTokensReceived(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not dissolvingResolves
    require 0 <= arg1
    s = (2000000000000000000000 * 10^18 * _totalSupply) + (100 * 10^18 * _totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
    t = (2000000000000000000000 * 10^18 * _totalSupply) + (100 * 10^18 * _totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
    while s < t:
        require s
        s = ((2000000000000000000000 * 10^18 * _totalSupply) + (100 * 10^18 * _totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
        t = s
        continue 
    if 100000000000 * 10^18 <= t:
        return ((t - 100000000000 * 10^18 / 10^10) - _totalSupply)
    revert
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balances[address(arg1)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balances[address(arg1)]
    average_ethSpent[address(arg1)] -= arg3 * average_ethSpent[address(arg1)] / balances[address(arg1)]
    average_buyInTimeSum[address(arg1)] -= arg3 * average_buyInTimeSum[address(arg1)] / balances[address(arg1)]
    average_ethSpent[address(arg2)] += arg3 * average_ethSpent[address(arg1)] / balances[address(arg1)]
    average_buyInTimeSum[address(arg2)] += arg3 * average_buyInTimeSum[address(arg1)] / balances[address(arg1)]
    require arg3 <= balances[address(arg1)]
    require balances[address(arg1)]
    red[address(arg1)] -= arg3 * red[address(arg1)] / balances[address(arg1)]
    green[address(arg1)] -= arg3 * green[address(arg1)] / balances[address(arg1)]
    blue[address(arg1)] -= arg3 * blue[address(arg1)] / balances[address(arg1)]
    red[address(arg2)] += arg3 * red[address(arg1)] / balances[address(arg1)]
    green[address(arg2)] += arg3 * green[address(arg1)] / balances[address(arg1)]
    blue[address(arg2)] += arg3 * blue[address(arg1)] / balances[address(arg1)]
    balances[address(arg1)] -= arg3
    balances[arg2] += arg3
    mem[128] = 64
    mem[160] = arg3
    mem[192 len ceil32(arg3)] = mem[128 len ceil32(arg3)]
    emit Transfer(arg3, Array(len=arg3, data=mem[192 len arg3]), msg.sender, arg2);
    return 1
}

function getReturnsForBonds(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require 10^10 * (arg2 + 10^18)^2 + -arg2 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg2) + (10^10 * _totalSupply + 10^18 / 10^18 * arg2)
    require balances[address(arg1)]
    require average_ethSpent[address(arg1)]
    require balances[address(arg1)]
    require sumOfInputETH - sumOfOutputETH
    require (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH)
    require (25 * 10^6 * 3600 * arg2) + (10^10 * _totalSupply + 10^18 / 10^18 * arg2) - (10^10 * (arg2 + 10^18)^2 + -arg2 - 10^18 / 10^18 / 2) / 10^18
    return (25 * 10^6 * 3600 * arg2) + (10^10 * _totalSupply + 10^18 / 10^18 * arg2) - (10^10 * (arg2 + 10^18)^2 + -arg2 - 10^18 / 10^18 / 2) / 10^18, 
           (block.timestamp << 64 * arg2 * average_ethSpent[address(arg1)] / balances[address(arg1)]) - (average_buyInTimeSum[address(arg1)] / average_ethSpent[address(arg1)] * arg2 * average_ethSpent[address(arg1)] / balances[address(arg1)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * arg2 * average_ethSpent[address(arg1)] / balances[address(arg1)] / (25 * 10^6 * 3600 * arg2) + (10^10 * _totalSupply + 10^18 / 10^18 * arg2) - (10^10 * (arg2 + 10^18)^2 + -arg2 - 10^18 / 10^18 / 2) / 10^18,
           sumOfOutputTime + (arg2 * average_buyInTimeSum[address(arg1)] / balances[address(arg1)]),
           sumOfOutputETH + (arg2 * average_ethSpent[address(arg1)] / balances[address(arg1)]),
           arg2 * average_ethSpent[address(arg1)] / balances[address(arg1)]
}

function colorTransfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require balances[address(msg.sender)]
    average_ethSpent[address(msg.sender)] -= arg2 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    average_buyInTimeSum[address(msg.sender)] -= arg2 * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    average_ethSpent[address(arg1)] += arg2 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    average_buyInTimeSum[address(arg1)] += arg2 * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)]
    red[address(msg.sender)] -= arg2 * red[address(msg.sender)] / balances[address(msg.sender)]
    green[address(msg.sender)] -= arg2 * green[address(msg.sender)] / balances[address(msg.sender)]
    blue[address(msg.sender)] -= arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
    red[address(arg1)] += arg2 * red[address(msg.sender)] / balances[address(msg.sender)]
    green[address(arg1)] += arg2 * green[address(msg.sender)] / balances[address(msg.sender)]
    blue[address(arg1)] += arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    require ext_code.size(arg1)
    call arg1.0x157fac with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, arg2 * red[address(msg.sender)] / balances[address(msg.sender)], arg2 * green[address(msg.sender)] / balances[address(msg.sender)], arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x73ddf252: arg2, msg.sender, arg1
    return arg2 * red[address(msg.sender)] / balances[address(msg.sender)], 
           arg2 * green[address(msg.sender)] / balances[address(msg.sender)],
           arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
}

function clockTransfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require balances[msg.sender]
    require balances[address(msg.sender)]
    average_ethSpent[address(msg.sender)] -= arg2 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    average_buyInTimeSum[address(msg.sender)] -= arg2 * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    average_ethSpent[address(arg1)] += arg2 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    average_buyInTimeSum[address(arg1)] += arg2 * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)]
    red[address(msg.sender)] -= arg2 * red[address(msg.sender)] / balances[address(msg.sender)]
    green[address(msg.sender)] -= arg2 * green[address(msg.sender)] / balances[address(msg.sender)]
    blue[address(msg.sender)] -= arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
    red[address(arg1)] += arg2 * red[address(msg.sender)] / balances[address(msg.sender)]
    green[address(arg1)] += arg2 * green[address(msg.sender)] / balances[address(msg.sender)]
    blue[address(arg1)] += arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    require ext_code.size(arg1)
    call arg1.0x3052b7cf with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, arg2 * average_ethSpent[msg.sender] / balances[msg.sender], arg2 * average_buyInTimeSum[address(msg.sender)] / balances[msg.sender], arg2 * red[address(msg.sender)] / balances[address(msg.sender)], arg2 * green[address(msg.sender)] / balances[address(msg.sender)], arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x73ddf252: arg2, msg.sender, arg1
    return arg2 * average_ethSpent[msg.sender] / balances[msg.sender], 
           arg2 * average_buyInTimeSum[address(msg.sender)] / balances[msg.sender],
           arg2 * red[address(msg.sender)] / balances[address(msg.sender)],
           arg2 * green[address(msg.sender)] / balances[address(msg.sender)],
           arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require balances[address(msg.sender)]
    average_ethSpent[address(msg.sender)] -= arg2 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    average_buyInTimeSum[address(msg.sender)] -= arg2 * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    average_ethSpent[address(arg1)] += arg2 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    average_buyInTimeSum[address(arg1)] += arg2 * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)]
    red[address(msg.sender)] -= arg2 * red[address(msg.sender)] / balances[address(msg.sender)]
    green[address(msg.sender)] -= arg2 * green[address(msg.sender)] / balances[address(msg.sender)]
    blue[address(msg.sender)] -= arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
    red[address(arg1)] += arg2 * red[address(msg.sender)] / balances[address(msg.sender)]
    green[address(arg1)] += arg2 * green[address(msg.sender)] / balances[address(msg.sender)]
    blue[address(arg1)] += arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    if not ext_code.size(arg1):
    else:
        mem[164] = 96
        mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
        mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
        require ext_code.size(arg1)
        call arg1.0xc0ee0b8a with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    emit 0x73ddf252: arg2, msg.sender, arg1
    return 1
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64
    require arg1 > 0
    require Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64
    resolveWeight[address(msg.sender)] = (Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64
    require ext_code.size(resolveTokenAddress)
    call resolveTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor6, resolveWeight[address(msg.sender)] - ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dissolvingResolves = dissolvingResolves - resolveWeight[address(msg.sender)] + ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64)
    require Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64
    payouts[address(msg.sender)] = ((earningsPerResolve * resolveWeight[msg.sender] * arg1) - (payouts[msg.sender] * arg1) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64) - (resolveWeight[address(msg.sender)] * earningsPerResolve) + ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * earningsPerResolve) + payouts[address(msg.sender)]
    earningsOffset = ((earningsPerResolve * resolveWeight[msg.sender] * arg1) - (payouts[msg.sender] * arg1) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64) - (resolveWeight[address(msg.sender)] * earningsPerResolve) + ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * earningsPerResolve) + earningsOffset
    require ext_code.size(stor21)
    call stor21.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(arg1, resolveWeight[address(msg.sender)] - ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64), msg.sender);
    return (resolveWeight[address(msg.sender)] - ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64))
}

function sub_72b60c30(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(stor21)
    call stor21.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, stor7, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg5 >= 10^12
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not dissolvingResolves
    average_ethSpent[address(arg1)] += arg5
    average_buyInTimeSum[address(arg1)] += arg5 * block.timestamp << 64
    sumOfInputETH += arg5
    sumOfInputTime += arg5 * block.timestamp << 64
    s = (2000000000000000000000 * 10^18 * _totalSupply) + (100 * 10^18 * _totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg5) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
    t = (2000000000000000000000 * 10^18 * _totalSupply) + (100 * 10^18 * _totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg5) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
    while s < t:
        require s
        s = ((2000000000000000000000 * 10^18 * _totalSupply) + (100 * 10^18 * _totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg5) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
        t = s
        continue 
    require 100000000000 * 10^18 <= t
    if arg2 <= 10^18:
        red[address(arg1)] = red[address(arg1)] + (t - 100000000000 * 10^18 / 10^10 * arg2) - (_totalSupply * arg2)
        if arg3 <= 10^18:
            green[address(arg1)] = green[address(arg1)] + (t - 100000000000 * 10^18 / 10^10 * arg3) - (_totalSupply * arg3)
            if arg4 <= 10^18:
                blue[address(arg1)] = (t - 100000000000 * 10^18 / 10^10 * arg4) - (_totalSupply * arg4) + blue[address(arg1)]
            else:
                blue[address(arg1)] = (10^18 * t - 100000000000 * 10^18 / 10^10) - (10^18 * _totalSupply) + blue[address(arg1)]
        else:
            green[address(arg1)] = green[address(arg1)] + (10^18 * t - 100000000000 * 10^18 / 10^10) - (10^18 * _totalSupply)
            if arg4 <= 10^18:
                blue[address(arg1)] = (t - 100000000000 * 10^18 / 10^10 * arg4) - (_totalSupply * arg4) + blue[address(arg1)]
            else:
                blue[address(arg1)] = (10^18 * t - 100000000000 * 10^18 / 10^10) - (10^18 * _totalSupply) + blue[address(arg1)]
    else:
        red[address(arg1)] = red[address(arg1)] + (10^18 * t - 100000000000 * 10^18 / 10^10) - (10^18 * _totalSupply)
        if arg3 <= 10^18:
            green[address(arg1)] = green[address(arg1)] + (t - 100000000000 * 10^18 / 10^10 * arg3) - (_totalSupply * arg3)
            if arg4 <= 10^18:
                blue[address(arg1)] = (t - 100000000000 * 10^18 / 10^10 * arg4) - (_totalSupply * arg4) + blue[address(arg1)]
            else:
                blue[address(arg1)] = (10^18 * t - 100000000000 * 10^18 / 10^10) - (10^18 * _totalSupply) + blue[address(arg1)]
        else:
            green[address(arg1)] = green[address(arg1)] + (10^18 * t - 100000000000 * 10^18 / 10^10) - (10^18 * _totalSupply)
            if arg4 <= 10^18:
                blue[address(arg1)] = (t - 100000000000 * 10^18 / 10^10 * arg4) - (_totalSupply * arg4) + blue[address(arg1)]
            else:
                blue[address(arg1)] = (10^18 * t - 100000000000 * 10^18 / 10^10) - (10^18 * _totalSupply) + blue[address(arg1)]
    _totalSupply = t - 100000000000 * 10^18 / 10^10
    balances[address(arg1)] = (t - 100000000000 * 10^18 / 10^10) - _totalSupply + balances[address(arg1)]
    if dissolvingResolves:
        require dissolvingResolves
        earningsPerResolve += 0 / dissolvingResolves
    emit 0x73ddf252: ((t - 100000000000 * 10^18 / 10^10) - _totalSupply), 0, arg1
    emit Buy(arg5, (t - 100000000000 * 10^18 / 10^10) - _totalSupply, 0, arg1);
    return ((t - 100000000000 * 10^18 / 10^10) - _totalSupply)
}

function transfer(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require balances[address(msg.sender)]
    average_ethSpent[address(msg.sender)] -= arg2 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    average_buyInTimeSum[address(msg.sender)] -= arg2 * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    average_ethSpent[address(arg1)] += arg2 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    average_buyInTimeSum[address(arg1)] += arg2 * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    require arg2 <= balances[address(msg.sender)]
    require balances[address(msg.sender)]
    red[address(msg.sender)] -= arg2 * red[address(msg.sender)] / balances[address(msg.sender)]
    green[address(msg.sender)] -= arg2 * green[address(msg.sender)] / balances[address(msg.sender)]
    blue[address(msg.sender)] -= arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
    red[address(arg1)] += arg2 * red[address(msg.sender)] / balances[address(msg.sender)]
    green[address(arg1)] += arg2 * green[address(msg.sender)] / balances[address(msg.sender)]
    blue[address(arg1)] += arg2 * blue[address(msg.sender)] / balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    if not ext_code.size(arg1):
        mem[ceil32(arg3.length) + 128] = arg2
        mem[ceil32(arg3.length) + 160] = 64
        mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                          mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
                          arg3.length,
                          Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
                          msg.sender,
                          arg1,
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
            emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                          Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                          mem[arg3.length + 160 len ceil32(arg3.length) + -arg3.length + 32],
                          arg3.length,
                          Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                          mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
                          msg.sender,
                          arg1,
        mem[ceil32(arg3.length) + 128] = arg2
        emit 0x73ddf252: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)], msg.sender, arg1
        mem[ceil32(arg3.length) + 128] = 1
        return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
    mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg3.length) + 228] = arg3.length
    mem[ceil32(arg3.length) + 260 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 224 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      0,
                      Mask(224, 0, arg2),
                      64,
                      arg3.length,
                      Mask(8 * arg3.length, -(8 * arg3.length) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * arg3.length) - 256,
                      msg.sender,
                      arg1,
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 224] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 256 len arg3.length % 32]
        emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                      0,
                      Mask(224, 0, arg2),
                      64,
                      arg3.length,
                      Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256,
                      mem[(2 * ceil32(arg3.length)) + 224 len floor32(arg3.length) + -ceil32(arg3.length) + 32],
                      msg.sender,
                      arg1,
    emit 0x73ddf252: 0, Mask(224, 0, arg2), msg.sender, arg1
    return 0, 1
}

function sellBonds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if balances[address(msg.sender)] < arg1:
        revert with 0, 'Amount is more than balance'
    require balances[msg.sender]
    sellSideDivs[address(msg.sender)] -= arg1 * sellSideDivs[msg.sender] / balances[msg.sender]
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1)
    require balances[address(msg.sender)]
    require average_ethSpent[address(msg.sender)]
    require balances[address(msg.sender)]
    require sumOfInputETH - sumOfOutputETH
    require (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH)
    require (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    require ext_code.size(resolveTokenAddress)
    if balances[address(msg.sender)]:
        call resolveTokenAddress.mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp << 64 * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, red[address(msg.sender)] / balances[address(msg.sender)], green[address(msg.sender)] / balances[address(msg.sender)], blue[address(msg.sender)] / balances[address(msg.sender)]
    else:
        call resolveTokenAddress.mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp << 64 * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sumOfOutputTime += arg1 * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    sumOfOutputETH += arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    require balances[address(msg.sender)]
    average_ethSpent[address(msg.sender)] = (balances[address(msg.sender)] * average_ethSpent[address(msg.sender)]) - (arg1 * average_ethSpent[address(msg.sender)]) / balances[address(msg.sender)]
    require balances[address(msg.sender)]
    average_buyInTimeSum[address(msg.sender)] = (balances[address(msg.sender)] * average_buyInTimeSum[address(msg.sender)]) - (arg1 * average_buyInTimeSum[address(msg.sender)]) / balances[address(msg.sender)]
    _totalSupply -= arg1
    require balances[address(msg.sender)]
    blue[address(msg.sender)] = (balances[address(msg.sender)] * blue[address(msg.sender)]) - (arg1 * blue[address(msg.sender)]) / balances[address(msg.sender)]
    green[address(msg.sender)] = (balances[address(msg.sender)] * green[address(msg.sender)]) - (arg1 * green[address(msg.sender)]) / balances[address(msg.sender)]
    red[address(msg.sender)] = (balances[address(msg.sender)] * red[address(msg.sender)]) - (arg1 * red[address(msg.sender)]) / balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg1
    if dissolvingResolves:
        require dissolvingResolves
        earningsPerResolve += arg1 * sellSideDivs[msg.sender] / balances[msg.sender] << 64 / dissolvingResolves
    require ext_code.size(stor21)
    call stor21.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x20a7fc03: arg1, (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, (block.timestamp << 64 * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, arg1 * sellSideDivs[msg.sender] / balances[msg.sender], arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)], msg.sender
    return (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, 
           (block.timestamp << 64 * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * arg1) + (10^10 * _totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18,
           arg1 * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
}

function reinvestEarnings(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 > Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe74686520616d6f756e74206578636565647320746f74616c206561726e696e67,
                    mem[197 len 31]
    require Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64
    resolveWeight[address(msg.sender)] = (Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64
    require ext_code.size(resolveTokenAddress)
    call resolveTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor6, resolveWeight[address(msg.sender)] - ((Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dissolvingResolves = dissolvingResolves - resolveWeight[address(msg.sender)] + ((Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64)
    require Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64
    payouts[address(msg.sender)] = ((resolveWeight[msg.sender] * earningsPerResolve * arg1) - (payouts[msg.sender] * arg1) / Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64) - (resolveWeight[address(msg.sender)] * earningsPerResolve) + ((Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64 * earningsPerResolve) + payouts[address(msg.sender)]
    earningsOffset = ((resolveWeight[msg.sender] * earningsPerResolve * arg1) - (payouts[msg.sender] * arg1) / Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64) - (resolveWeight[address(msg.sender)] * earningsPerResolve) + ((Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64 * earningsPerResolve) + earningsOffset
    require arg1 >= 1000
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(resolveTokenAddress)
    staticcall resolveTokenAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not dissolvingResolves
    average_ethSpent[address(msg.sender)] += arg1
    average_buyInTimeSum[address(msg.sender)] += arg1 * block.timestamp << 64
    sumOfInputETH += arg1
    sumOfInputTime += arg1 * block.timestamp << 64
    s = (2000000000000000000000 * 10^18 * _totalSupply) + (100 * 10^18 * _totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
    t = (2000000000000000000000 * 10^18 * _totalSupply) + (100 * 10^18 * _totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
    while s < t:
        require s
        s = ((2000000000000000000000 * 10^18 * _totalSupply) + (100 * 10^18 * _totalSupply^2) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
        t = s
        continue 
    require 100000000000 * 10^18 <= t
    if balances[address(msg.sender)]:
        red[address(msg.sender)] = red[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * red[address(msg.sender)] / balances[address(msg.sender)]) - (_totalSupply * red[address(msg.sender)] / balances[address(msg.sender)])
        green[address(msg.sender)] = green[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * green[address(msg.sender)] / balances[address(msg.sender)]) - (_totalSupply * green[address(msg.sender)] / balances[address(msg.sender)])
        blue[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10 * blue[address(msg.sender)] / balances[address(msg.sender)]) - (_totalSupply * blue[address(msg.sender)] / balances[address(msg.sender)]) + blue[address(msg.sender)]
    if dissolvingResolves:
        require dissolvingResolves
        earningsPerResolve += 0 / dissolvingResolves
    _totalSupply = t - 100000000000 * 10^18 / 10^10
    balances[address(msg.sender)] = (t - 100000000000 * 10^18 / 10^10) - _totalSupply + balances[address(msg.sender)]
    emit 0xc7209ba1: arg1, resolveWeight[address(msg.sender)] - ((Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64), (t - 100000000000 * 10^18 / 10^10) - _totalSupply, 0, msg.sender
    return (t - 100000000000 * 10^18 / 10^10) - _totalSupply, 
           resolveWeight[address(msg.sender)] - ((Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (arg1 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (resolveWeight[msg.sender] * earningsPerResolve) - payouts[msg.sender]) >> 64)
}

function sellAllBonds() payable {
    require balances[msg.sender]
    sellSideDivs[address(msg.sender)] -= balances[address(msg.sender)] * sellSideDivs[msg.sender] / balances[msg.sender]
    require 10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)])
    require balances[address(msg.sender)]
    require average_ethSpent[address(msg.sender)]
    require balances[address(msg.sender)]
    require sumOfInputETH - sumOfOutputETH
    require (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH)
    require (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
    require ext_code.size(resolveTokenAddress)
    if balances[address(msg.sender)]:
        call resolveTokenAddress.mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp << 64 * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, red[address(msg.sender)] / balances[address(msg.sender)], green[address(msg.sender)] / balances[address(msg.sender)], blue[address(msg.sender)] / balances[address(msg.sender)]
    else:
        call resolveTokenAddress.mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp << 64 * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sumOfOutputTime += balances[address(msg.sender)] * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    sumOfOutputETH += balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    require balances[address(msg.sender)]
    average_ethSpent[address(msg.sender)] = (balances[address(msg.sender)] * average_ethSpent[address(msg.sender)]) - (balances[address(msg.sender)] * average_ethSpent[address(msg.sender)]) / balances[address(msg.sender)]
    require balances[address(msg.sender)]
    average_buyInTimeSum[address(msg.sender)] = (balances[address(msg.sender)] * average_buyInTimeSum[address(msg.sender)]) - (balances[address(msg.sender)] * average_buyInTimeSum[address(msg.sender)]) / balances[address(msg.sender)]
    _totalSupply -= balances[address(msg.sender)]
    require balances[address(msg.sender)]
    blue[address(msg.sender)] = (balances[address(msg.sender)] * blue[address(msg.sender)]) - (balances[address(msg.sender)] * blue[address(msg.sender)]) / balances[address(msg.sender)]
    green[address(msg.sender)] = (balances[address(msg.sender)] * green[address(msg.sender)]) - (balances[address(msg.sender)] * green[address(msg.sender)]) / balances[address(msg.sender)]
    red[address(msg.sender)] = (balances[address(msg.sender)] * red[address(msg.sender)]) - (balances[address(msg.sender)] * red[address(msg.sender)]) / balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    if dissolvingResolves:
        require dissolvingResolves
        earningsPerResolve += balances[address(msg.sender)] * sellSideDivs[msg.sender] / balances[msg.sender] << 64 / dissolvingResolves
    require ext_code.size(stor21)
    call stor21.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x20a7fc03: balances[address(msg.sender)], (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, (block.timestamp << 64 * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, balances[address(msg.sender)] * sellSideDivs[msg.sender] / balances[msg.sender], balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)], msg.sender
    return (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, 
           (block.timestamp << 64 * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18,
           balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
}

function getMeOutOfHere() payable {
    require balances[msg.sender]
    sellSideDivs[address(msg.sender)] -= balances[address(msg.sender)] * sellSideDivs[msg.sender] / balances[msg.sender]
    require 10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)])
    require balances[address(msg.sender)]
    require average_ethSpent[address(msg.sender)]
    require balances[address(msg.sender)]
    require sumOfInputETH - sumOfOutputETH
    require (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH)
    require (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
    require ext_code.size(resolveTokenAddress)
    if balances[address(msg.sender)]:
        call resolveTokenAddress.mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp << 64 * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, red[address(msg.sender)] / balances[address(msg.sender)], green[address(msg.sender)] / balances[address(msg.sender)], blue[address(msg.sender)] / balances[address(msg.sender)]
    else:
        call resolveTokenAddress.mint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp << 64 * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, 0, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sumOfOutputTime += balances[address(msg.sender)] * average_buyInTimeSum[address(msg.sender)] / balances[address(msg.sender)]
    sumOfOutputETH += balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]
    require balances[address(msg.sender)]
    average_ethSpent[address(msg.sender)] = (balances[address(msg.sender)] * average_ethSpent[address(msg.sender)]) - (balances[address(msg.sender)] * average_ethSpent[address(msg.sender)]) / balances[address(msg.sender)]
    require balances[address(msg.sender)]
    average_buyInTimeSum[address(msg.sender)] = (balances[address(msg.sender)] * average_buyInTimeSum[address(msg.sender)]) - (balances[address(msg.sender)] * average_buyInTimeSum[address(msg.sender)]) / balances[address(msg.sender)]
    _totalSupply -= balances[address(msg.sender)]
    require balances[address(msg.sender)]
    blue[address(msg.sender)] = (balances[address(msg.sender)] * blue[address(msg.sender)]) - (balances[address(msg.sender)] * blue[address(msg.sender)]) / balances[address(msg.sender)]
    green[address(msg.sender)] = (balances[address(msg.sender)] * green[address(msg.sender)]) - (balances[address(msg.sender)] * green[address(msg.sender)]) / balances[address(msg.sender)]
    red[address(msg.sender)] = (balances[address(msg.sender)] * red[address(msg.sender)]) - (balances[address(msg.sender)] * red[address(msg.sender)]) / balances[address(msg.sender)]
    balances[address(msg.sender)] = 0
    if dissolvingResolves:
        require dissolvingResolves
        earningsPerResolve += balances[address(msg.sender)] * sellSideDivs[msg.sender] / balances[msg.sender] << 64 / dissolvingResolves
    require ext_code.size(stor21)
    call stor21.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x20a7fc03: balances[address(msg.sender)], (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, (block.timestamp << 64 * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) - (average_buyInTimeSum[address(msg.sender)] / average_ethSpent[address(msg.sender)] * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)]) / (block.timestamp << 64) - (sumOfInputTime - sumOfOutputTime / sumOfInputETH - sumOfOutputETH) * balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)] / (25 * 10^6 * 3600 * balances[address(msg.sender)]) + (10^10 * _totalSupply + 10^18 / 10^18 * balances[address(msg.sender)]) - (10^10 * (balances[address(msg.sender)] + 10^18)^2 + -balances[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, balances[address(msg.sender)] * sellSideDivs[msg.sender] / balances[msg.sender], balances[address(msg.sender)] * average_ethSpent[address(msg.sender)] / balances[address(msg.sender)], msg.sender
    require Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64 <= Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64
    require Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64 > 0
    require Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64
    resolveWeight[address(msg.sender)] = (Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64
    require ext_code.size(resolveTokenAddress)
    call resolveTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args stor6, resolveWeight[address(msg.sender)] - ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    dissolvingResolves = dissolvingResolves - resolveWeight[address(msg.sender)] + ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64)
    require Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64
    payouts[address(msg.sender)] = ((earningsPerResolve * resolveWeight[msg.sender] * Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64) - (payouts[msg.sender] * Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64) - (resolveWeight[address(msg.sender)] * earningsPerResolve) + ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * earningsPerResolve) + payouts[address(msg.sender)]
    earningsOffset = ((earningsPerResolve * resolveWeight[msg.sender] * Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64) - (payouts[msg.sender] * Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64) - (resolveWeight[address(msg.sender)] * earningsPerResolve) + ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * earningsPerResolve) + earningsOffset
    require ext_code.size(stor21)
    call stor21.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]), resolveWeight[address(msg.sender)] - ((Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64 * resolveWeight[address(msg.sender)]) - (Mask(192, 64, (resolveWeight[address(msg.sender)] * earningsPerResolve) - payouts[address(msg.sender)]) >> 64 * resolveWeight[address(msg.sender)]) / Mask(192, 64, (earningsPerResolve * resolveWeight[msg.sender]) - payouts[msg.sender]) >> 64), msg.sender);
}



}
