contract main {




// =====================  Runtime code  =====================


const getVersion = ext_call.return_data[0]

const getPrice = ext_call.return_data[32]


mapping of uint256 addressToAmountFunded;

function addressToAmountFunded(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return addressToAmountFunded[arg1]
}

function _fallback() payable {
    revert
}

function sub_262f564b(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    staticcall 0x8a753747a1fa494ec906ce90e9f37563a8af630e.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if arg1 and ext_call.return_data[32] > -1 / arg1:
        revert with 'NH{q', 17
    return (arg1 * ext_call.return_data[32] / 10^18)
}

function fund() payable {
    staticcall 0x8a753747a1fa494ec906ce90e9f37563a8af630e.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if msg.value and ext_call.return_data[32] > -1 / msg.value:
        revert with 'NH{q', 17
    if msg.value * ext_call.return_data[32] / 10^18 < 50 * 10^18:
        revert with 0, 'You need to spend more ETH!'
    if addressToAmountFunded[address(msg.sender)] > -msg.value - 1:
        revert with 'NH{q', 17
    addressToAmountFunded[address(msg.sender)] += msg.value
}



}
