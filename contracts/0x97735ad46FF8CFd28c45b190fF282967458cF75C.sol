contract main {




// =====================  Runtime code  =====================


#
#  - sub_5b06dece(?)
#
address owner;
address boosterAddress;
address usdcAddress;
mapping of struct auctions;
uint256 bidIncrement;

function usdc() payable {
    return usdcAddress
}

function auctions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return auctions[arg1].field_0, 
           auctions[arg1].field_256,
           bool(auctions[arg1].field_512),
           bool(auctions[arg1].field_520),
           auctions[arg1].field_768,
           auctions[arg1].field_1024
}

function owner() payable {
    return owner
}

function bidIncrement() payable {
    return bidIncrement
}

function booster() payable {
    return boosterAddress
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

function setUSDCAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    usdcAddress = arg1
}

function setBidIncrement(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    bidIncrement = arg1
}

function sub_134928b0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    boosterAddress = address(arg1)
}

function sub_c09fe13d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not auctions[arg1].field_520:
        revert with 0, 'Auction not started'
    auctions[arg1].field_512 = uint8(bool(arg2))
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

function sub_7a13afe7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not auctions[arg1].field_520:
        revert with 0, 'Auction not started'
    if arg2 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'End time must be greater than current block timestamp'
    auctions[arg1].field_256 = arg2
}

function endAuction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not auctions[arg1].field_512:
        revert with 0, 'Auction is not active'
    if block.timestamp >= auctions[arg1].field_256:
        auctions[arg1].field_512 = 0
        require ext_code.size(boosterAddress)
        call boosterAddress.0x42842e0e with:
             gas gas_remaining wei
            args address(this.address), auctions[arg1].field_1024, auctions[arg1].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function bid(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not auctions[arg1].field_520:
        revert with 0, 'Auction not started'
    if not auctions[arg1].field_512:
        revert with 0, 'Auction is not active'
    if auctions[arg1].field_768 > -bidIncrement - 1:
        revert with 'NH{q', 17
    if arg2 != auctions[arg1].field_768 + bidIncrement:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Bid amount must be equal to highest bid + bid increment'
    if block.timestamp >= auctions[arg1].field_256:
        revert with 0, 'Auction has ended'
    require ext_code.size(usdcAddress)
    call usdcAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if auctions[arg1].field_1024:
        require ext_code.size(usdcAddress)
        call usdcAddress.transfer(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args auctions[arg1].field_1024, auctions[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
    auctions[arg1].field_768 = arg2
    auctions[arg1].field_1024 = msg.sender
}

function startAuction(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if auctions[arg1].field_520:
        revert with 0, 'Auction already started'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Boost percent must be greater than 0'
    if arg2 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Boost percent must be less than or equal to 100'
    if arg3 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'End time must be greater than current block timestamp'
    require ext_code.size(boosterAddress)
    staticcall boosterAddress.0xa8db716f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    auctions[arg1].field_0 = ext_call.return_data[0]
    auctions[arg1].field_256 = arg3
    auctions[arg1].field_512 = 1
    auctions[arg1].field_520 = 1
    auctions[arg1].field_768 = 0
    auctions[arg1].field_1024 = 0
    require ext_code.size(boosterAddress)
    call boosterAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(this.address), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
