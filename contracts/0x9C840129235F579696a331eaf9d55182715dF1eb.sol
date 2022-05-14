contract main {




// =====================  Runtime code  =====================


#
#  - process(uint256 arg1)
#
address stor0;
mapping of uint8 stor1;
address _tokenAddress;
address stor3;
address stor4;
address stor5;
array of address stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of struct shares;
uint256 totalShares;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 minPeriod;
uint256 minDistribution;

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function totalShares() {
    return totalShares
}

function minDistribution() {
    return minDistribution
}

function totalDividends() {
    return totalDividends
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
}

function dividendsPerShare() {
    return dividendsPerShare
}

function _token() {
    return _tokenAddress
}

function totalDistributed() {
    return totalDistributed
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function minPeriod() {
    return minPeriod
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == stor0)
}

function setToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    _tokenAddress = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == _tokenAddress
    minPeriod = arg1
    minDistribution = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor0 = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)].field_0:
        return 0
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not dividendsPerShareAccuracyFactor:
        revert with 'NH{q', 18
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        return 0
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
        revert with 'NH{q', 17
    return ((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
}

function deposit() payable {
    require msg.sender == _tokenAddress
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 128] = stor4
    mem[ceil32(return_data.size) + 160] = stor3
    mem[ceil32(return_data.size) + 192] = 0xc57559dd00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 196] = 0
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor5)
    call stor5.swapExactAVAXForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 'NH{q', 17
    if totalDividends > -1:
        revert with 'NH{q', 17
    if dividendsPerShareAccuracyFactor and 0 > -1 / dividendsPerShareAccuracyFactor:
        revert with 'NH{q', 17
    if not totalShares:
        revert with 'NH{q', 18
    if dividendsPerShare > -((ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares) - 1:
        revert with 'NH{q', 17
    dividendsPerShare += (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares
}

function claimDividend() {
    if shares[address(msg.sender)].field_0:
        if shares[address(msg.sender)].field_0:
            if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            if not dividendsPerShareAccuracyFactor:
                revert with 'NH{q', 18
            if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(msg.sender)].field_256:
                if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(msg.sender)].field_256:
                    revert with 'NH{q', 17
                if (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 > 0:
                    if totalDistributed > -(shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(msg.sender)].field_256 - 1:
                        revert with 'NH{q', 17
                    totalDistributed = totalDistributed + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    require ext_code.size(stor3)
                    call stor3.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    stor8[address(msg.sender)] = block.timestamp
                    if shares[address(msg.sender)].field_512 > -(shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(msg.sender)].field_256 - 1:
                        revert with 'NH{q', 17
                    shares[address(msg.sender)].field_512 = shares[address(msg.sender)].field_512 + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 'NH{q', 18
                    shares[address(msg.sender)].field_256 = shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function setShare(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == _tokenAddress
    if shares[address(arg1)].field_0 > 0:
        if shares[address(arg1)].field_0:
            if shares[address(arg1)].field_0:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 'NH{q', 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 'NH{q', 18
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 'NH{q', 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 > 0:
                        if totalDistributed > -(shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(arg1)].field_256 - 1:
                            revert with 'NH{q', 17
                        totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        require ext_code.size(stor3)
                        call stor3.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        stor8[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > -(shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) + shares[address(arg1)].field_256 - 1:
                            revert with 'NH{q', 17
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                            revert with 'NH{q', 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 'NH{q', 18
                        shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if arg2 <= 0:
        if not arg2:
            if shares[address(arg1)].field_0 > 0:
                if stor6.length < 1:
                    revert with 'NH{q', 17
                if stor6.length - 1 >= stor6.length:
                    revert with 'NH{q', 50
                if stor7[address(arg1)] >= stor6.length:
                    revert with 'NH{q', 50
                stor6[stor7[address(arg1)]] = stor6[stor6.length]
                if stor6.length < 1:
                    revert with 'NH{q', 17
                if stor6.length - 1 >= stor6.length:
                    revert with 'NH{q', 50
                stor7[stor6[stor6.length]] = stor7[address(arg1)]
                if not stor6.length:
                    revert with 'NH{q', 49
                stor6[stor6.length] = 0
                stor6.length--
    else:
        if not shares[address(arg1)].field_0:
            stor7[address(arg1)] = stor6.length
            stor6.length++
            stor6[stor6.length] = arg1
        else:
            if not arg2:
                if shares[address(arg1)].field_0 > 0:
                    if stor6.length < 1:
                        revert with 'NH{q', 17
                    if stor6.length - 1 >= stor6.length:
                        revert with 'NH{q', 50
                    if stor7[address(arg1)] >= stor6.length:
                        revert with 'NH{q', 50
                    stor6[stor7[address(arg1)]] = stor6[stor6.length]
                    if stor6.length < 1:
                        revert with 'NH{q', 17
                    if stor6.length - 1 >= stor6.length:
                        revert with 'NH{q', 50
                    stor7[stor6[stor6.length]] = stor7[address(arg1)]
                    if not stor6.length:
                        revert with 'NH{q', 49
                    stor6[stor6.length] = 0
                    stor6.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 'NH{q', 17
    if totalShares - shares[address(arg1)].field_0 > -arg2 - 1:
        revert with 'NH{q', 17
    totalShares = totalShares - shares[address(arg1)].field_0 + arg2
    shares[address(arg1)].field_0 = arg2
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 'NH{q', 17
    if not dividendsPerShareAccuracyFactor:
        revert with 'NH{q', 18
    shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
}



}
