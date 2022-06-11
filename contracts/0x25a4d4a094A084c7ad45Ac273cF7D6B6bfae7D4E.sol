contract main {




// =====================  Runtime code  =====================


address _OWNER_;
uint8 stor1; offset 160
address _NEW_OWNER_;
mapping of struct price;
address quoteTokenAddress;
uint256 timestamp;
uint256 sub_cc6864b1;

function _OWNER_() payable {
    return _OWNER_
}

function quoteToken() payable {
    return quoteTokenAddress
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return price[address(arg1)].field_0
}

function _NEW_OWNER_() payable {
    return _NEW_OWNER_
}

function sub_93e45a39(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return price[address(arg1)].field_256
}

function getSpread(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return price[address(arg1)].field_512
}

function timestamp() payable {
    return timestamp
}

function infos(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return price[arg1].field_0, price[arg1].field_256, price[arg1].field_512
}

function sub_cc6864b1(?) payable {
    return sub_cc6864b1
}

function _fallback() payable {
    revert
}

function setStaleDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    sub_cc6864b1 = arg1
}

function setQuoteToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    quoteTokenAddress = arg1
}

function isFeasible(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not price[address(arg1)].field_0:
        return bool(price[address(arg1)].field_0)
    return block.timestamp <= timestamp + sub_cc6864b1
}

function sub_50a4a5c9(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    price[address(arg1)].field_512 = arg2
    timestamp = block.timestamp
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    emit OwnershipTransferPrepared(_OWNER_, arg1);
    _NEW_OWNER_ = arg1
}

function postPrice(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    price[address(arg1)].field_0 = arg2
    timestamp = block.timestamp
}

function initOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'InitializableOwnable: SHOULD_NOT_BE_INITIALIZED'
    stor1 = 1
    _OWNER_ = arg1
}

function claimOwnership() payable {
    if _NEW_OWNER_ != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'InitializableOwnable: INVALID_CLAIM'
    emit OwnershipTransferred(_OWNER_, _NEW_OWNER_);
    _OWNER_ = _NEW_OWNER_
    _NEW_OWNER_ = 0
}

function price(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not price[address(arg1)].field_0:
        return price[address(arg1)].field_0, bool(price[address(arg1)].field_0)
    return price[address(arg1)].field_0, block.timestamp <= timestamp + sub_cc6864b1
}

function sub_6eb54beb(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    price[address(arg1)].field_0 = arg2
    price[address(arg1)].field_512 = arg3
    price[address(arg1)].field_256 = arg4
    timestamp = block.timestamp
}

function state(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not price[address(arg1)].field_0:
        return price[address(arg1)].field_0, 
               price[address(arg1)].field_512,
               price[address(arg1)].field_256,
               bool(price[address(arg1)].field_0)
    return price[address(arg1)].field_0, 
           price[address(arg1)].field_512,
           price[address(arg1)].field_256,
           block.timestamp <= timestamp + sub_cc6864b1
}

function sub_5684c91e(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Wooracle: length_INVALID'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        price[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
    timestamp = block.timestamp
}

function sub_6b7cb1ac(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Wooracle: length_INVALID'
    idx = 0
    while idx < ('cd', 4).length:
        require idx < ('cd', 36).length
        require idx < ('cd', 4).length
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        price[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = cd[((32 * idx) + cd[36] + 36)]
        idx = idx + 1
        continue 
    timestamp = block.timestamp
}

function sub_909dd4d7(?) payable {
    require calldata.size - 4 >= 128
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
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    if _OWNER_ != msg.sender:
        revert with 0, 'InitializableOwnable: NOT_OWNER'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'Wooracle: length_INVALID'
    if ('cd', 68).length != ('cd', 4).length:
        revert with 0, 'Wooracle: length_INVALID'
    if ('cd', 100).length != ('cd', 4).length:
        revert with 0, 'Wooracle: length_INVALID'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        require idx < ('cd', 36).length
        require idx < ('cd', 68).length
        require idx < ('cd', 100).length
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        price[address(cd[((32 * idx) + cd[4] + 36)])].field_0 = cd[((32 * idx) + cd[36] + 36)]
        price[address(cd[((32 * idx) + cd[4] + 36)])].field_512 = cd[((32 * idx) + cd[68] + 36)]
        price[address(cd[((32 * idx) + cd[4] + 36)])].field_256 = cd[((32 * idx) + cd[100] + 36)]
        idx = idx + 1
        continue 
    timestamp = block.timestamp
}



}
