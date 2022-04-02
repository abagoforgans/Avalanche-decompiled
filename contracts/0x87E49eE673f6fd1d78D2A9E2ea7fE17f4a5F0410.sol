contract main {




// =====================  Runtime code  =====================


#
#  - unsafeValueOfAsset(address arg1, uint256 arg2)
#  - sub_90431d35(?)
#  - valueOfAsset(address arg1, uint256 arg2)
#  - sub_b61d8c00(?)
#
const MAXIMUS = 0x4d765ebc318f8886d04c8e5e6393b7adb8eefb36


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address keeperAddress;
mapping of address stor102;
mapping of address stor103;
mapping of struct sub_5c8ed2f3;

function sub_5c8ed2f3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_5c8ed2f3[arg1].field_0, sub_5c8ed2f3[arg1].field_256
}

function owner() payable {
    return owner
}

function keeper() payable {
    return keeperAddress
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

function setTokenFeed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor103[address(arg1)] = arg2
}

function setPairToken(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor102[address(arg1)] = arg2
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

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if keeperAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PriceCalculator: caller is not the owner or keeper'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'PriceCalculator: invalid keeper address'
    keeperAddress = arg1
}

function sub_aa17c423(?) payable {
    require ext_code.size(stor103[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7])
    staticcall stor103[0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7].latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[32] == ext_call.return_data[32]
    require ext_call.return_data[64] == ext_call.return_data[64]
    require ext_call.return_data[96] == ext_call.return_data[96]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if not ext_call.return_data[32]:
        return 0
    require ext_call.return_data[32]
    if 10^10 * ext_call.return_data[32] / ext_call.return_data[32] != 10^10:
        revert with 0, 'SafeMath: multiplication overflow'
    return (10^10 * ext_call.return_data[32])
}

function initialize() payable {
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address) > 0:
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            Mask(248, 0, stor0.field_8) = 1
            uint8(stor0.field_0) = 1
            if ext_code.size(this.address) > 0:
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                Mask(248, 0, stor0.field_8) = 1
                uint8(stor0.field_0) = 1
                if ext_code.size(this.address) > 0:
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    Mask(248, 0, stor0.field_8) = 1
                    uint8(stor0.field_0) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    if ext_code.size(this.address) > 0:
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        Mask(248, 0, stor0.field_8) = 1
                        uint8(stor0.field_0) = 1
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
                        Mask(248, 0, stor0.field_8) = 0
}

function setPrices(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    mem[96] = arg1.length
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender == keeperAddress:
        idx = 0
        while idx < arg1.length:
            _66 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(32 * arg1.length) + 128]
            mem[_66] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[_66 + 32] = block.timestamp
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 104
            sub_5c8ed2f3[mem[(32 * idx) + 140 len 20]].field_0 = mem[_66]
            sub_5c8ed2f3[mem[(32 * idx) + 140 len 20]].field_256 = block.timestamp
            idx = idx + 1
            continue 
    else:
        if owner != msg.sender:
            revert with 0, 'PriceCalculator: caller is not the owner or keeper'
        idx = 0
        while idx < arg1.length:
            _68 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[(32 * arg1.length) + 128]
            mem[_68] = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[_68 + 32] = block.timestamp
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 104
            sub_5c8ed2f3[mem[(32 * idx) + 140 len 20]].field_0 = mem[_68]
            sub_5c8ed2f3[mem[(32 * idx) + 140 len 20]].field_256 = block.timestamp
            idx = idx + 1
            continue 
}



}
