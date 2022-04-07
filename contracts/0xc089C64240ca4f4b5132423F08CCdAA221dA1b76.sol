contract main {




// =====================  Runtime code  =====================


address owner;
address sub_9de2e1cbAddress;
uint256 startTimestamp;
uint256 stor3;
uint256 jackpot;
bool stor5;
uint256 stor5;
uint256 stor5; offset 1
uint256 entryFee;
address kingAddress;
uint256 sub_b3ea585e;
uint256 sub_53b0f923;
uint8 sub_edbf6815;

function sub_43556099(?) payable {
    return kingAddress
}

function sub_500ec048(?) payable {
    return entryFee
}

function sub_53b0f923(?) payable {
    return sub_53b0f923
}

function jackpot() payable {
    return jackpot
}

function getKing() payable {
    return kingAddress
}

function owner() payable {
    return owner
}

function getJackpot() payable {
    return jackpot
}

function sub_9de2e1cb(?) payable {
    return sub_9de2e1cbAddress
}

function sub_b3ea585e(?) payable {
    return sub_b3ea585e
}

function getEntryFee() payable {
    return entryFee
}

function startTimestamp() payable {
    return startTimestamp
}

function sub_edbf6815(?) payable {
    return bool(sub_edbf6815)
}

function _fallback() payable {
    revert
}

function getCurrentCycle() payable {
    require block.timestamp >= startTimestamp
    require stor3
    return ((block.timestamp - startTimestamp / stor3) + 1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    return 0
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

function claimWinnings() payable {
    require block.timestamp >= startTimestamp
    require stor3
    require msg.sender == kingAddress
    if (block.timestamp - startTimestamp / stor3) + -sub_b3ea585e + 1 <= sub_53b0f923:
        revert with 0, 'Game is not over'
    require ext_code.size(sub_9de2e1cbAddress)
    call sub_9de2e1cbAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args kingAddress, jackpot
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require block.timestamp >= startTimestamp
    require stor3
    if (block.timestamp - startTimestamp / stor3) + -sub_b3ea585e + 1 > sub_53b0f923:
        if sub_edbf6815:
            revert with 0, 'Game is over'
    require arg2 >= entryFee
    mem[ceil32(arg3.length) + 128] = arg1
    mem[ceil32(arg3.length) + 160] = entryFee
    emit NewKing(Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length) + 32]);
    jackpot += entryFee
    sub_b3ea585e = (block.timestamp - startTimestamp / stor3) + 1
    bool(stor5.field_0) = 0
    uint255(stor5.field_1) = uint255(stor5.field_0)
    kingAddress = arg1
    if not sub_edbf6815:
        sub_edbf6815 = 1
}



}
