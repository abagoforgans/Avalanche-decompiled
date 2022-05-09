contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address operator;
uint8 stor2;
address meltTokenAddress; offset 8
uint256 totalWhiteListAirdrop;
uint256 totalWhiteListClaimed;
mapping of uint256 balanceOfAirDrop;

function getOperator(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return operator[arg1]
}

function totalWhiteListAirdrop() payable {
    return totalWhiteListAirdrop
}

function balanceOfAirDrop(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOfAirDrop[address(arg1)]
}

function meltToken() payable {
    return meltTokenAddress
}

function totalWhiteListClaimed() payable {
    return totalWhiteListClaimed
}

function owner() payable {
    return owner
}

function userWhiteList(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOfAirDrop[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setHalt(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    stor2 = uint8(arg1)
}

function setOperator(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    operator[arg1] = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimAirdrop() payable {
    require balanceOfAirDrop[msg.sender]
    balanceOfAirDrop[msg.sender] = 0
    if balanceOfAirDrop[msg.sender] + totalWhiteListClaimed < totalWhiteListClaimed:
        revert with 0, 'SafeMath: addition overflow'
    totalWhiteListClaimed += balanceOfAirDrop[msg.sender]
    require ext_code.size(meltTokenAddress)
    call meltTokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, balanceOfAirDrop[msg.sender]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0xd02d10c2: msg.sender, balanceOfAirDrop[msg.sender]
}

function sub_89e8148e(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'lOwnable: caller is not the owne'
    require ext_code.size(meltTokenAddress)
    staticcall meltTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(meltTokenAddress)
        call meltTokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function setWhiteList(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if operator[0] != msg.sender:
        revert with 0, 
                    32,
                    45,
                    0x724f70657261746f723a2063616c6c6572206973206e6f742074686520656c696769626c65204f70657261746f,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 273 len 19]
    if arg1.length != arg2.length:
        revert with 0, 
                    32,
                    35,
                    0x7374686520696e707574206172726179206c656e677468206973206e6f742065717561,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 263 len 29]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] + totalWhiteListAirdrop < totalWhiteListAirdrop:
            revert with 0, 'SafeMath: addition overflow'
        totalWhiteListAirdrop += mem[(32 * idx) + (32 * arg1.length) + 160]
        require idx < arg2.length
        require idx < arg1.length
        if mem[(32 * idx) + (32 * arg1.length) + 160] + balanceOfAirDrop[mem[(32 * idx) + 140 len 20]] < balanceOfAirDrop[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 'SafeMath: addition overflow'
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        balanceOfAirDrop[mem[(32 * idx) + 140 len 20]] += mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}



}
