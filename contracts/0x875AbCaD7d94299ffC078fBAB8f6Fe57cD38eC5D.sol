contract main {




// =====================  Runtime code  =====================


address owner;
uint256 sub_3871d656;
uint256 sub_c89169ad;
uint256 sub_0550245a;
uint256 sub_21949a25;
uint256 sub_652421f5;

function sub_0550245a(?) payable {
    return sub_0550245a
}

function sub_21949a25(?) payable {
    return sub_21949a25
}

function sub_3871d656(?) payable {
    return sub_3871d656
}

function sub_652421f5(?) payable {
    return sub_652421f5
}

function owner() payable {
    return owner
}

function sub_c89169ad(?) payable {
    return sub_c89169ad
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

function setUTCOffset(int256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < -12:
        revert with 0, 'Invalid UCT offset'
    if arg1 > 14:
        revert with 0, 'Invalid UCT offset'
    sub_3871d656 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isTradingOpenAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if sub_3871d656 < 0:
        require arg1 + (3600 * sub_3871d656) <= arg1
    else:
        require arg1 + (3600 * sub_3871d656) >= arg1
    if ((arg1 + (3600 * sub_3871d656) / 24 * 3600) + 3 % 7) + 1 < 6:
        if arg1 + (3600 * sub_3871d656) % 24 * 3600 / 3600 >= sub_c89169ad:
            if arg1 + (3600 * sub_3871d656) % 24 * 3600 / 3600 < sub_21949a25:
                if arg1 + (3600 * sub_3871d656) % 24 * 3600 / 3600 != sub_c89169ad:
                    return 1
                if arg1 + (3600 * sub_3871d656) % 24 * 3600 % 3600 / 60 >= sub_0550245a:
                    return 1
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function isTradingOpen() payable {
    if sub_3871d656 < 0:
        require block.timestamp + (3600 * sub_3871d656) <= block.timestamp
    else:
        require block.timestamp + (3600 * sub_3871d656) >= block.timestamp
    if ((block.timestamp + (3600 * sub_3871d656) / 24 * 3600) + 3 % 7) + 1 < 6:
        if block.timestamp + (3600 * sub_3871d656) % 24 * 3600 / 3600 >= sub_c89169ad:
            if block.timestamp + (3600 * sub_3871d656) % 24 * 3600 / 3600 < sub_21949a25:
                if block.timestamp + (3600 * sub_3871d656) % 24 * 3600 / 3600 != sub_c89169ad:
                    return 1
                if block.timestamp + (3600 * sub_3871d656) % 24 * 3600 % 3600 / 60 >= sub_0550245a:
                    return 1
                else:
                    return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}



}
