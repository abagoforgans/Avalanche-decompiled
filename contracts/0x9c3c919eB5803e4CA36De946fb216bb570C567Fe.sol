contract main {




// =====================  Runtime code  =====================


const getRequestFee = 0


uint32 stor0;
uint32 lastRequestId; offset 160
address owner;
mapping of uint256 stor1;
mapping of uint32 stor2;

function getLastRequestId() payable {
    return lastRequestId
}

function owner() payable {
    return owner
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

function isRequestComplete(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 > -stor2[arg1 << 224] + test266151307():
        revert with 'NH{q', 17
    return (block.number > uint32(stor2[arg1 << 224] + 1))
}

function requestRandomNumber() payable {
    if lastRequestId == test266151307():
        revert with 'NH{q', 17
    lastRequestId = uint32(lastRequestId + 1)
    stor2[stor0] = uint32(block.number)
    emit RandomNumberRequested(lastRequestId, msg.sender);
    return stor0, uint32(block.number)
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

function randomNumber(uint32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 > -stor2[arg1 << 224] + test266151307():
        revert with 'NH{q', 17
    if block.number <= uint32(stor2[arg1 << 224] + 1):
        revert with 0, 'RNGBlockhash/request-incomplete'
    if not stor1[arg1 << 224]:
        if block.number < 1:
            revert with 'NH{q', 17
        stor1[arg1 << 224] = block.hash(block.number - 1)
        emit RandomNumberCompleted(block.hash(block.number - 1), arg1);
    return stor1[arg1 << 224]
}



}
