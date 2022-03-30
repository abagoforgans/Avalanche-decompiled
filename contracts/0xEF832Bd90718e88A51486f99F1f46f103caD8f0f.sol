contract main {




// =====================  Runtime code  =====================


const frequency = 300


address owner;
uint256 stor1;
uint8 paused;
address sub_c9f801c7Address; offset 8
uint256 lastDistribution;

function paused() payable {
    return bool(paused)
}

function owner() payable {
    return owner
}

function lastDistribution() payable {
    return lastDistribution
}

function sub_c9f801c7(?) payable {
    return sub_c9f801c7Address
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

function setProtocolAddresses(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_c9f801c7Address = arg1
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if paused:
        paused = 0
        emit Unpaused(msg.sender);
    else:
        paused = 1
        emit Paused(msg.sender);
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

function distributeRewards() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if paused:
        revert with 0, 'Pausable: paused'
    if ext_code.size(msg.sender) > 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x73446973747269627574696f6e50726f78793a2043616c6c6572206973206e6f7420616e20454f,
                    mem[203 len 25]
    if block.timestamp <= lastDistribution + 300:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    53,
                    0x41446973747269627574696f6e50726f78793a20446973747269627574696f6e2074696d657220686173206e6f7420656c61707365,
                    mem[217 len 11]
    # nil
}



}
