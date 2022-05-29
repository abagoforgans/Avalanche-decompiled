contract main {




// =====================  Runtime code  =====================


#
#  - process(uint256 arg1)
#
address _tokenAddress;
address rewardTokenAddress;
address routerAddress;
array of address shareholders;
mapping of uint256 shareholderIndexes;
mapping of uint256 shareholderClaims;
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

function shareholderClaims(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shareholderClaims[arg1]
}

function totalDividends() {
    return totalDividends
}

function shareholders(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < shareholders.length
    return shareholders[arg1]
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
}

function shareholderIndexes(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return shareholderIndexes[arg1]
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

function rewardToken() {
    return rewardTokenAddress
}

function router() {
    return routerAddress
}

function minPeriod() {
    return minPeriod
}

function _fallback() payable {
    revert
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == _tokenAddress
    minPeriod = arg1
    minDistribution = arg2
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not shares[address(arg1)].field_0:
        return 0
    if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        return 0
    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
        revert with 0, 17
    return ((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
}

function claimDividend() {
    if shares[address(msg.sender)].field_0:
        if shares[address(msg.sender)].field_0:
            if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                revert with 0, 17
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 18
            if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(msg.sender)].field_256:
                if shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(msg.sender)].field_256:
                    revert with 0, 17
                if (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256:
                    if totalDistributed > !((shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                        revert with 0, 17
                    totalDistributed = totalDistributed + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    require ext_code.size(rewardTokenAddress)
                    call rewardTokenAddress.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    shareholderClaims[address(msg.sender)] = block.timestamp
                    if shares[address(msg.sender)].field_512 > !((shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256):
                        revert with 0, 17
                    shares[address(msg.sender)].field_512 = shares[address(msg.sender)].field_512 + (shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                    if shares[address(msg.sender)].field_0 and dividendsPerShare > -1 / shares[address(msg.sender)].field_0:
                        revert with 0, 17
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 18
                    shares[address(msg.sender)].field_256 = shares[address(msg.sender)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
}

function deposit() payable {
    require msg.sender == _tokenAddress
    mem[100] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 96] = 2
    require ext_code.size(routerAddress)
    staticcall routerAddress.0xad5c4648 with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 192] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 192
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 128] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 160] = rewardTokenAddress
    mem[(2 * ceil32(return_data.size)) + 192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 128
    mem[(2 * ceil32(return_data.size)) + 324] = 2
    idx = 0
    s = (2 * ceil32(return_data.size)) + 356
    t = ceil32(return_data.size) + 128
    while idx < mem[ceil32(return_data.size) + 96]:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(2 * ceil32(return_data.size)) + 260] = this.address
    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp
    require ext_code.size(routerAddress)
    call routerAddress.mem[mem[64] len 4] with:
       value msg.value wei
         gas gas_remaining wei
        args mem[mem[64] + 4 len (2 * ceil32(return_data.size)) + -mem[64] + 416]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(rewardTokenAddress)
    staticcall rewardTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _24 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    if mem[_24] < ext_call.return_data[0]:
        revert with 0, 17
    if totalDividends > !(mem[_24] - ext_call.return_data[0]):
        revert with 0, 17
    totalDividends = totalDividends + mem[_24] - ext_call.return_data[0]
    if dividendsPerShareAccuracyFactor and mem[_24] - ext_call.return_data[0] > -1 / dividendsPerShareAccuracyFactor:
        revert with 0, 17
    if not totalShares:
        revert with 0, 18
    if dividendsPerShare > !((mem[_24] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares):
        revert with 0, 17
    dividendsPerShare += (mem[_24] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares
}

function setShare(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require msg.sender == _tokenAddress
    if shares[address(arg1)].field_0:
        if shares[address(arg1)].field_0:
            if shares[address(arg1)].field_0:
                if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                    revert with 0, 17
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 18
                if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor > shares[address(arg1)].field_256:
                    if shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor < shares[address(arg1)].field_256:
                        revert with 0, 17
                    if (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                        if totalDistributed > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        totalDistributed = totalDistributed + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        require ext_code.size(rewardTokenAddress)
                        call rewardTokenAddress.0xa9059cbb with:
                             gas gas_remaining wei
                            args address(arg1), (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                        shareholderClaims[address(arg1)] = block.timestamp
                        if shares[address(arg1)].field_512 > !((shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256):
                            revert with 0, 17
                        shares[address(arg1)].field_512 = shares[address(arg1)].field_512 + (shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                        if shares[address(arg1)].field_0 and dividendsPerShare > -1 / shares[address(arg1)].field_0:
                            revert with 0, 17
                        if not dividendsPerShareAccuracyFactor:
                            revert with 0, 18
                        shares[address(arg1)].field_256 = shares[address(arg1)].field_0 * dividendsPerShare / dividendsPerShareAccuracyFactor
    if arg2 <= 0:
        if not arg2:
            if shares[address(arg1)].field_0:
                if shareholders.length < 1:
                    revert with 0, 17
                if shareholders.length - 1 >= shareholders.length:
                    revert with 0, 50
                if shareholderIndexes[address(arg1)] >= shareholders.length:
                    revert with 0, 50
                shareholders[stor4[address(arg1)]] = shareholders[shareholders.length]
                if shareholders.length < 1:
                    revert with 0, 17
                if shareholders.length - 1 >= shareholders.length:
                    revert with 0, 50
                shareholderIndexes[stor3[stor3.length]] = shareholderIndexes[address(arg1)]
                if not shareholders.length:
                    revert with 0, 49
                shareholders[shareholders.length] = 0
                shareholders.length--
    else:
        if not shares[address(arg1)].field_0:
            shareholderIndexes[address(arg1)] = shareholders.length
            shareholders.length++
            shareholders[shareholders.length] = arg1
        else:
            if not arg2:
                if shares[address(arg1)].field_0:
                    if shareholders.length < 1:
                        revert with 0, 17
                    if shareholders.length - 1 >= shareholders.length:
                        revert with 0, 50
                    if shareholderIndexes[address(arg1)] >= shareholders.length:
                        revert with 0, 50
                    shareholders[stor4[address(arg1)]] = shareholders[shareholders.length]
                    if shareholders.length < 1:
                        revert with 0, 17
                    if shareholders.length - 1 >= shareholders.length:
                        revert with 0, 50
                    shareholderIndexes[stor3[stor3.length]] = shareholderIndexes[address(arg1)]
                    if not shareholders.length:
                        revert with 0, 49
                    shareholders[shareholders.length] = 0
                    shareholders.length--
    if totalShares < shares[address(arg1)].field_0:
        revert with 0, 17
    if totalShares - shares[address(arg1)].field_0 > !arg2:
        revert with 0, 17
    totalShares = totalShares - shares[address(arg1)].field_0 + arg2
    shares[address(arg1)].field_0 = arg2
    if arg2 and dividendsPerShare > -1 / arg2:
        revert with 0, 17
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 18
    shares[address(arg1)].field_256 = arg2 * dividendsPerShare / dividendsPerShareAccuracyFactor
}



}
