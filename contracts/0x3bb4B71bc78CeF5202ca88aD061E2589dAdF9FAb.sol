contract main {




// =====================  Runtime code  =====================


address owner;
mapping of struct oracleFeed;
uint256 storA6EE;

function getOracleFeed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return oracleFeed[arg1].field_0, oracleFeed[arg1].field_256
}

function getOwner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function ownershipTransfer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '', 0
    owner = arg1
    return 1
}

function setOracleFeed(uint256 arg1, address arg2, uint256 arg3, bool arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 == arg2
    require arg4 == arg4
    if owner != msg.sender:
        revert with 0, '', 0
    oracleFeed[arg1].field_0 = arg2
    oracleFeed[arg1].field_256 = 10^arg3
    oracleFeed[arg1].field_512 = uint8(arg4)
    oracleFeed[arg1].field_768 = arg5
    return 1
}

function getTokenPrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleFeed[arg1].field_0)
    staticcall oracleFeed[arg1].field_0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'underlyingPrice latestRoundData Problem'
    if not ext_call.return_data[32]:
        if not oracleFeed[arg1].field_256:
            revert with 0, 'div by zero', 0
        if not oracleFeed[arg1].field_512:
            if not 0 / oracleFeed[arg1].field_256:
                revert with 0, 'price zero', 0
            return (0 / oracleFeed[arg1].field_256)
        require ext_code.size(oracleFeed[oracleFeed[arg1].field_768].field_0)
        staticcall oracleFeed[oracleFeed[arg1].field_768].field_0.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
        if ext_call.return_data[32] <= 0:
            revert with 0, 'convertFeedUnderlyingPrice latestRoundData Problem'
        if not ext_call.return_data[32]:
            if not storA6EE:
                revert with 0, 'div by zero', 0
            if not 0 / oracleFeed[arg1].field_256:
                revert with 0, 'price zero', 0
            if 0 / storA6EE * 0 / oracleFeed[arg1].field_256 / 0 / oracleFeed[arg1].field_256 != 0 / storA6EE:
                revert with 0, 'mul overflow'
            if not 0 / storA6EE * 0 / oracleFeed[arg1].field_256 / 10^18:
                revert with 0, 'price zero', 0
            return (0 / storA6EE * 0 / oracleFeed[arg1].field_256 / 10^18)
        if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
            revert with 0, 'mul overflow'
        if not storA6EE:
            revert with 0, 'div by zero', 0
        if not 0 / oracleFeed[arg1].field_256:
            revert with 0, 'price zero', 0
        if 10^18 * ext_call.return_data[32] / storA6EE * 0 / oracleFeed[arg1].field_256 / 0 / oracleFeed[arg1].field_256 != 10^18 * ext_call.return_data[32] / storA6EE:
            revert with 0, 'mul overflow'
        if not 10^18 * ext_call.return_data[32] / storA6EE * 0 / oracleFeed[arg1].field_256 / 10^18:
            revert with 0, 'price zero', 0
        return (10^18 * ext_call.return_data[32] / storA6EE * 0 / oracleFeed[arg1].field_256 / 10^18)
    if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
        revert with 0, 'mul overflow'
    if not oracleFeed[arg1].field_256:
        revert with 0, 'div by zero', 0
    if not oracleFeed[arg1].field_512:
        if not 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256:
            revert with 0, 'price zero', 0
        return (10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256)
    require ext_code.size(oracleFeed[oracleFeed[arg1].field_768].field_0)
    staticcall oracleFeed[oracleFeed[arg1].field_768].field_0.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, 'convertFeedUnderlyingPrice latestRoundData Problem'
    if not ext_call.return_data[32]:
        if not storA6EE:
            revert with 0, 'div by zero', 0
        if not 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256:
            revert with 0, 'price zero', 0
        if 0 / storA6EE * 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256 / 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256 != 0 / storA6EE:
            revert with 0, 'mul overflow'
        if not 0 / storA6EE * 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256 / 10^18:
            revert with 0, 'price zero', 0
        return (0 / storA6EE * 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256 / 10^18)
    if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
        revert with 0, 'mul overflow'
    if not storA6EE:
        revert with 0, 'div by zero', 0
    if not 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256:
        revert with 0, 'price zero', 0
    if 10^18 * ext_call.return_data[32] / storA6EE * 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256 / 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256 != 10^18 * ext_call.return_data[32] / storA6EE:
        revert with 0, 'mul overflow'
    if not 10^18 * ext_call.return_data[32] / storA6EE * 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256 / 10^18:
        revert with 0, 'price zero', 0
    return (10^18 * ext_call.return_data[32] / storA6EE * 10^18 * ext_call.return_data[32] / oracleFeed[arg1].field_256 / 10^18)
}



}
