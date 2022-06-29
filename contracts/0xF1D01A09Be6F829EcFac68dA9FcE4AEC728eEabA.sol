contract main {




// =====================  Runtime code  =====================


address owner;
address oracleAddress;
address priceFeedAddress;
address sub_dda94262Address;

function PriceFeed() payable {
    return priceFeedAddress
}

function owner() payable {
    return owner
}

function sub_dda94262(?) payable {
    return sub_dda94262Address
}

function Oracle() payable {
    return oracleAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    oracleAddress = arg1
}

function setPriceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    priceFeedAddress = arg1
}

function sub_ba03a77d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_dda94262Address = address(arg1)
}

function update() payable {
    require ext_code.size(oracleAddress)
    call oracleAddress.0xa2e62045 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4ff99c0d(?) payable {
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function twap(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x6808a128 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    return ext_call.return_data[14 len 18]
}

function consult(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x3ddac953 with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    return ext_call.return_data[14 len 18]
}

function sub_1f427369(?) payable {
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    return ext_call.return_data[22 len 10], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           Mask(80, 0, ext_call.return_data[128])
}

function latestPrice() payable {
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x3ddac953 with:
            gas gas_remaining wei
           args sub_dda94262Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[14 len 18]
    if ext_call.return_data[14 len 18] and ext_call.return_data[0] > -1 / ext_call.return_data[14 len 18]:
        revert with 0, 17
    return (ext_call.return_data[14 len 18] * ext_call.return_data[0])
}



}
