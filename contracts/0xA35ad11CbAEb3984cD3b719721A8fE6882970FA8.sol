contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address OHMAddress; offset 8
uint256 stor0; offset 8
address owner;
array of address nonCirculatingOHM;

function isInitialized() payable {
    return bool(uint8(stor0.field_0))
}

function owner() payable {
    return owner
}

function OHM() payable {
    return OHMAddress
}

function nonCirculatingOHMAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < nonCirculatingOHM.length
    return address(nonCirculatingOHM[arg1])
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Sender is not owner'
    owner = arg1
    return 1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'caller is not owner'
    require not uint8(stor0.field_0)
    uint8(stor0.field_0) = 1
    Mask(248, 0, stor0.field_8) = 0
    OHMAddress = arg1
    return 1
}

function setNonCirculatingOHMAddresses(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Sender is not owner'
    nonCirculatingOHM.length = arg1.length
    if not arg1.length:
        idx = 0
        while nonCirculatingOHM.length > idx:
            uint256(nonCirculatingOHM[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg1 + 36
        while arg1 + (32 * arg1.length) + 36 > idx:
            address(nonCirculatingOHM[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg1.length) + 31) >> 5
        while nonCirculatingOHM.length > idx:
            uint256(nonCirculatingOHM[idx]) = 0
            idx = idx + 1
            continue 
    return 1
}



}
