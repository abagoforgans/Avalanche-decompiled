contract main {




// =====================  Runtime code  =====================


address owner;
address sharkAddress;
address stor3;
address dataAddress;
address mimAddress;
uint256 stor7;
array of struct mints;

function mints(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < mints.length
    return mints[arg1].field_0, 
           mints[arg1].field_256,
           mints[arg1].field_512,
           mints[arg1].field_768,
           mints[arg1].field_1024,
           mints[arg1].field_1280
}

function data() payable {
    return dataAddress
}

function owner() payable {
    return owner
}

function mim() payable {
    return mimAddress
}

function shark() payable {
    return sharkAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setData(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 >= mints.length:
        revert with 'NH{q', 50
    if mints[arg1].field_256 != msg.sender:
        revert with 0, 'You can't claim this mint.'
    if arg1 >= mints.length:
        revert with 'NH{q', 50
    if arg1 >= mints.length:
        revert with 'NH{q', 50
    if block.timestamp >= mints[arg1].field_1024:
        require ext_code.size(sharkAddress)
        call sharkAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, mints[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg1 >= mints.length:
            revert with 'NH{q', 50
        mints[arg1].field_768 = 0
    else:
        if block.timestamp < mints[arg1].field_1280:
            revert with 'NH{q', 17
        if arg1 >= mints.length:
            revert with 'NH{q', 50
        if mints[arg1].field_1024 < mints[arg1].field_1280:
            revert with 'NH{q', 17
        if arg1 >= mints.length:
            revert with 'NH{q', 50
        if block.timestamp - mints[arg1].field_1280 and mints[arg1].field_768 > -1 / block.timestamp - mints[arg1].field_1280:
            revert with 'NH{q', 17
        if not mints[arg1].field_1024 - mints[arg1].field_1280:
            revert with 'NH{q', 18
        require ext_code.size(sharkAddress)
        call sharkAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, (block.timestamp * mints[arg1].field_768) - (mints[arg1].field_1280 * mints[arg1].field_768) / mints[arg1].field_1024 - mints[arg1].field_1280
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if arg1 >= mints.length:
            revert with 'NH{q', 50
        if mints[arg1].field_768 < (block.timestamp * mints[arg1].field_768) - (mints[arg1].field_1280 * mints[arg1].field_768) / mints[arg1].field_1024 - mints[arg1].field_1280:
            revert with 'NH{q', 17
        mints[arg1].field_768 -= (block.timestamp * mints[arg1].field_768) - (mints[arg1].field_1280 * mints[arg1].field_768) / mints[arg1].field_1024 - mints[arg1].field_1280
        if arg1 >= mints.length:
            revert with 'NH{q', 50
    mints[arg1].field_1280 = block.timestamp
}

function mint(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != 60:
        if arg2 != 120:
            if arg2 != 300:
                revert with 0, 'Wrong time.'
    require ext_code.size(dataAddress)
    staticcall dataAddress.0x3bc5de30 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[128]
    if not arg1:
        if ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if block.timestamp > -arg2 - 1:
            revert with 'NH{q', 17
        mints.length++
        mints[mints.length].field_0 = stor7
        mints[mints.length].field_256 = msg.sender
        mints[mints.length].field_512 = arg1
        mints[mints.length].field_768 = arg1
        mints[mints.length].field_1024 = block.timestamp + arg2
        mints[mints.length].field_1280 = block.timestamp
        require ext_code.size(mimAddress)
        call mimAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 0 / ext_call.return_data[32]
    else:
        if arg1 and 10^18 > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0, 'SafeMath: multiplication overflow'
        if ext_call.return_data[32] <= 0:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[32]:
            revert with 'NH{q', 18
        if block.timestamp > -arg2 - 1:
            revert with 'NH{q', 17
        mints.length++
        mints[mints.length].field_0 = stor7
        mints[mints.length].field_256 = msg.sender
        mints[mints.length].field_512 = arg1
        mints[mints.length].field_768 = arg1
        mints[mints.length].field_1024 = block.timestamp + arg2
        mints[mints.length].field_1280 = block.timestamp
        require ext_code.size(mimAddress)
        call mimAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), 10^18 * arg1 / ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if stor7 > -2:
        revert with 'NH{q', 17
    stor7++
}



}
