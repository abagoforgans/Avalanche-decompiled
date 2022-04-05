contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address lP_TokensAddress;
uint256 endBlock;

function endBlock() payable {
    return endBlock
}

function LP_Tokens() payable {
    return lP_TokensAddress
}

function started() payable {
    return bool(stor1)
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function startTimer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if stor1:
        revert with 0, 'Timer is already started'
    endBlock = block.number + arg1
    stor1 = 1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawLPs() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if bool(stor1) != 1:
        revert with 0, 'Timer has not been started'
    if block.number < endBlock:
        revert with 0, 'Locked, can not withdraw'
    require ext_code.size(lP_TokensAddress)
    staticcall lP_TokensAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(lP_TokensAddress)
    call lP_TokensAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
