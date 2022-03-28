contract main {




// =====================  Runtime code  =====================


address owner;
address masterChefAddress;
uint256 sub_1ac3452b;
uint256 DELAY;
uint256 sub_e32326ff;
address transferToAddress;
array of struct sub_4df9532e;
array of struct setQueue;
array of struct sub_b87dc2e2;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432777;
array of struct stor75276140696391174450305814049576319106646922510300487059720162673006384432778;
array of uint256 stor75276140696391174450305814049576319106646922510300487059720162673006384432779;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;
array of uint8 stor110349606679412691172957834289542550319383271247755660854362242977991410020070;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020071;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986689;

function transferTo() payable {
    return transferToAddress
}

function sub_1ac3452b(?) payable {
    return sub_1ac3452b
}

function sub_4df9532e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_4df9532e.length
    return sub_4df9532e[arg1].field_0, 
           sub_4df9532e[arg1].field_256,
           bool(sub_4df9532e[arg1].field_416),
           bool(sub_4df9532e[arg1].field_424),
           sub_4df9532e[arg1].field_512
}

function masterChef() payable {
    return masterChefAddress
}

function DELAY() payable {
    return DELAY
}

function setQueue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < setQueue.length
    return setQueue[arg1].field_0, 
           setQueue[arg1].field_256,
           bool(setQueue[arg1].field_512),
           bool(setQueue[arg1].field_520),
           setQueue[arg1].field_768
}

function owner() payable {
    return owner
}

function sub_b87dc2e2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_b87dc2e2.length
    return sub_b87dc2e2[arg1].field_0, 
           sub_b87dc2e2[arg1].field_256,
           sub_b87dc2e2[arg1].field_512,
           bool(sub_b87dc2e2[arg1].field_768),
           sub_b87dc2e2[arg1].field_1024
}

function sub_e32326ff(?) payable {
    return sub_e32326ff
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

function sub_d311ee5a(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_e32326ff = block.timestamp
    transferToAddress = arg1
}

function sub_41c62e25(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_b87dc2e2.length++
    sub_b87dc2e2[sub_b87dc2e2.length].field_0 = arg1
    storF3F7[stor8.length] = arg2
    storF3F7[stor8.length] = arg3
    storF3F7[stor8.length] = 0
    storF3F7[stor8.length] = block.timestamp
}

function sub_c4a9881f(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    setQueue.length++
    setQueue[setQueue.length].field_0 = arg1
    storA66C[stor7.length] = arg2
    storA66C[stor7.length].field_0 = uint8(arg3)
    storA66C[stor7.length].field_8 = 0
    storA66C[stor7.length].field_16 = Mask(240, 16, arg3) >> 16
    storA66C[stor7.length] = block.timestamp
}

function sub_1a0b80c1(?) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_4df9532e.length++
    sub_4df9532e[sub_4df9532e.length].field_0 = arg1
    storF652[stor6.length].field_0 = arg2
    storF652[stor6.length].field_160 = uint8(arg3)
    storF652[stor6.length].field_168 = 0
    storF652[stor6.length].field_176 = Mask(80, 16, arg3) >> 16
    storF652[stor6.length] = block.timestamp
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

function sub_fdf43754(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < setQueue.length
    if setQueue[arg1].field_520:
        revert with 0, 'already executed'
    if DELAY + setQueue[arg1].field_768 < setQueue[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= DELAY + setQueue[arg1].field_768:
        revert with 0, 'Too early'
    require arg1 < setQueue.length
    setQueue[arg1].field_520 = 1
    require ext_code.size(masterChefAddress)
    call masterChefAddress.'dH/y' with:
         gas gas_remaining wei
        args setQueue[arg1].field_0, setQueue[arg1].field_256, bool(setQueue[arg1].field_512)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function executeTransfer() payable {
    if owner != msg.sender:
        if transferToAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        48,
                        0x734f776e61626c653a2063616c6c6572206973206e6f7420746865206f776e6572206f7220667574757265206f776e65,
                        mem[212 len 16]
    if sub_1ac3452b + sub_e32326ff < sub_e32326ff:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= sub_1ac3452b + sub_e32326ff:
        revert with 0, 'Too early'
    require ext_code.size(masterChefAddress)
    call masterChefAddress.0xf2fde38b with:
         gas gas_remaining wei
        args transferToAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3f2d6fbf(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < sub_4df9532e.length
    if sub_4df9532e[arg1].field_424:
        revert with 0, 'already executed'
    if DELAY + sub_4df9532e[arg1].field_512 < sub_4df9532e[arg1].field_512:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= DELAY + sub_4df9532e[arg1].field_512:
        revert with 0, 'Too early'
    require arg1 < sub_4df9532e.length
    sub_4df9532e[arg1].field_424 = 1
    require ext_code.size(masterChefAddress)
    call masterChefAddress.add(uint256 rg1, address rg2, bool rg3) with:
         gas gas_remaining wei
        args sub_4df9532e[arg1].field_0, sub_4df9532e[arg1].field_256, bool(sub_4df9532e[arg1].field_416)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_ffd1d7a1(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 < sub_b87dc2e2.length
    if sub_b87dc2e2[arg1].field_768:
        revert with 0, 'already executed'
    if DELAY + sub_b87dc2e2[arg1].field_1024 < sub_b87dc2e2[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= DELAY + sub_b87dc2e2[arg1].field_1024:
        revert with 0, 'Too early'
    require arg1 < sub_b87dc2e2.length
    sub_b87dc2e2[arg1].field_768 = 1
    require ext_code.size(masterChefAddress)
    call masterChefAddress.setRewards(uint256 rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining wei
        args sub_b87dc2e2[arg1].field_0, sub_b87dc2e2[arg1].field_256, sub_b87dc2e2[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
