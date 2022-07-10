contract main {




// =====================  Runtime code  =====================


const sub_5d044319(?) = 10^18

const sub_77a11388(?) = 25 * 10^15

const sub_e8c35a44(?) = 10^17

const sub_e8c4faff(?) = 5 * 10^18


uint256 sub_64311871;
address nftAddress;
mapping of uint256 sub_c856ac5e;

function nftAddress() {
    return nftAddress
}

function sub_64311871(?) {
    return sub_64311871
}

function sub_c856ac5e(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_c856ac5e[arg1]
}

function _fallback() payable {
    revert
}

function sub_99a66adf(?) {
    require ext_code.size(nftAddress)
    staticcall nftAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    return (sha3(block.difficulty, block.timestamp, nftAddress or unknown_0x18160ddd(?????)) % ext_call.return_data[0])
}

function sub_9f441257(?) {
    require ext_code.size(nftAddress)
    staticcall nftAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    sub_64311871 = sha3(block.difficulty, block.timestamp, nftAddress or unknown_0x18160ddd(?????)) % ext_call.return_data[0]
}



}
