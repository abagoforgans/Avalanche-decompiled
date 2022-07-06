contract main {




// =====================  Runtime code  =====================


#
#  - claim(uint256[] arg1)
#
address owner;
uint256 sub_6f8f1ceb;
uint256 sub_0ae55ae5;
uint256 sub_146daff4;
uint256 sub_e5d76232;
uint256 sub_19a41ea9;
uint256 sub_1ec4a4a8;
uint256 sub_f5597032;
uint256 sub_7e953ee7;
uint256 sub_fb0ecf68;
address stor10;
address stor11;
address stor13;
address sub_864bd587Address;

function sub_0ae55ae5(?) payable {
    return sub_0ae55ae5
}

function sub_146daff4(?) payable {
    return sub_146daff4
}

function sub_19a41ea9(?) payable {
    return sub_19a41ea9
}

function sub_1ec4a4a8(?) payable {
    return sub_1ec4a4a8
}

function sub_6f8f1ceb(?) payable {
    return sub_6f8f1ceb
}

function sub_7e953ee7(?) payable {
    return sub_7e953ee7
}

function sub_864bd587(?) payable {
    return sub_864bd587Address
}

function owner() payable {
    return owner
}

function sub_e5d76232(?) payable {
    return sub_e5d76232
}

function sub_f5597032(?) payable {
    return sub_f5597032
}

function sub_fb0ecf68(?) payable {
    return sub_fb0ecf68
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

function sub_61c873f5(?) payable {
    require calldata.size - 4 >= 64
    require arg1 < 6
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 5:
        revert with 0, 33
    if arg1 == 4:
        sub_7e953ee7 = arg2
    else:
        if arg1 > 5:
            revert with 0, 33
        if arg1 != 5:
            sub_f5597032 = arg2
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

function sub_f0b468bd(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_864bd587Address = address(arg3)
    stor11 = address(arg2)
    stor10 = address(arg1)
    stor13 = address(arg4)
    sub_fb0ecf68 = arg5
}

function sub_67001c52(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] < 6
        if idx >= ('cd', 36).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[36] + 36)] < 2
        if idx >= ('cd', 68).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[4] + 36)] > 5:
            revert with 0, 33
        if cd[((32 * idx) + cd[4] + 36)] == 4:
            if cd[((32 * idx) + cd[36] + 36)] > 1:
                revert with 0, 33
            if cd[((32 * idx) + cd[36] + 36)]:
                sub_1ec4a4a8 = cd[((32 * idx) + cd[68] + 36)]
            else:
                sub_19a41ea9 = cd[((32 * idx) + cd[68] + 36)]
        else:
            if cd[((32 * idx) + cd[4] + 36)] > 5:
                revert with 0, 33
            if cd[((32 * idx) + cd[36] + 36)] > 1:
                revert with 0, 33
            if cd[((32 * idx) + cd[4] + 36)] != 5:
                if cd[((32 * idx) + cd[36] + 36)]:
                    sub_0ae55ae5 = cd[((32 * idx) + cd[68] + 36)]
                else:
                    sub_6f8f1ceb = cd[((32 * idx) + cd[68] + 36)]
            else:
                if cd[((32 * idx) + cd[36] + 36)]:
                    sub_e5d76232 = cd[((32 * idx) + cd[68] + 36)]
                else:
                    sub_146daff4 = cd[((32 * idx) + cd[68] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}



}
