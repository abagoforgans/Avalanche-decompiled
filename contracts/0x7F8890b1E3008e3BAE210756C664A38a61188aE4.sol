contract main {




// =====================  Runtime code  =====================


address owner;
address sub_40c65f72Address;
array of address user;
array of uint256 multiplier;
mapping of uint256 balance;
mapping of struct lastBlock;
mapping of uint8 stor10;
array of struct pool;
uint256 totalPoints;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884730;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884731;

function getPool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < pool.length
    return pool[arg1].field_0, pool[arg1].field_512, pool[arg1].field_256
}

function getCurrentMultiplier() payable {
    return multiplier.length
}

function getTotalPoints() payable {
    return totalPoints
}

function sub_40c65f72(?) payable {
    return sub_40c65f72Address
}

function getLastBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastBlock[address(arg1)].field_512
}

function getRewards(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastBlock[address(arg1)].field_256
}

function owner() payable {
    return owner
}

function getUsersCount() payable {
    return user.length
}

function getMultiplier(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 5
    return multiplier[arg1]
}

function getUser(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < user.length
    return user[arg1]
}

function getBalance(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return balance[arg1][address(arg2)]
}

function getPoolsCount() payable {
    return pool.length
}

function trustedSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function _fallback() payable {
    revert
}

function preSignMsg(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1)
}

function getMsgForSign(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    return sha3(arg1, arg2, arg3, arg4)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTrustedSigner(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor10[address(arg1)] = uint8(arg2)
}

function setMultiplier(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require arg1 < 5
    multiplier[arg1] = arg2
}

function getData(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    hash = sha256hash(arg1, arg2, arg3, arg4) 
    if not sha256hash.result:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return hash
}

function addNewPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg2 + totalPoints < totalPoints:
        revert with 0, 'SafeMath: addition overflow'
    totalPoints += arg2
    pool.length++
    stor175B[stor11.length] = arg1
    stor175B[stor11.length] = arg2
    stor175B[stor11.length] = block.number
    emit AddNewPool(address(arg1), arg2);
}

function setPoll(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require arg1 < pool.length
    if pool[arg1].field_256 > totalPoints:
        revert with 0, 'SafeMath: subtraction overflow'
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalPoints = arg2 + totalPoints - pool[arg1].field_256
    require arg1 < pool.length
    pool[arg1].field_256 = arg2
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < pool.length
    if not arg2:
        revert with 0, 'Amount must be higher than zero'
    if arg2 > balance[arg1][msg.sender]:
        revert with 0, 'Amount to withdraw too high'
    balance[arg1][msg.sender] -= arg2
    require ext_code.size(pool[arg1].field_0)
    call pool[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit Withdraw(arg1, arg2, msg.sender);
}

function emergencyRefund(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(sub_40c65f72Address)
    call sub_40c65f72Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit EmergencyRefund(msg.sender, ext_call.return_data[0]);
    require ext_code.size(sub_40c65f72Address)
    call sub_40c65f72Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_40c65f72Address)
    call sub_40c65f72Address.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function harvest(uint256 arg1, uint256 arg2, uint256 arg3, bytes32 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if arg3 > block.number:
        revert with 0, 
                    32,
                    55,
                    0x6463757272656e74426c6f636b4e756d6265722063616e6e6f74206265206c6172676572207468616e20746865206c61737420626c6f63,
                    mem[ceil32(arg5.length) + 251 len 9]
    if lastBlock[address(msg.sender)].field_512 != arg2:
        revert with 0, 
                    32,
                    57,
                    0x726c617374426c6f636b4e756d626572206d75737420626520657175616c20746f207468652076616c756520696e207468652073746f726167,
                    mem[ceil32(arg5.length) + 253 len 7]
    if arg5.length != 65:
        revert with 0, 'ECDSA: invalid signature length'
    if mem[160] > 0x7fffffffffffffffffffffffffffffff5d576e7357a4501ddfe92f46681b20a0:
        revert with 0, 
                    32,
                    34,
                    0x7345434453413a20696e76616c6964207369676e6174757265202773272076616c75,
                    mem[ceil32(arg5.length) + 230 len 30]
    revert with 0, 
                32,
                34,
                0x6545434453413a20696e76616c6964207369676e6174757265202776272076616c75,
                mem[ceil32(arg5.length) + 230 len 30]
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0, 'Amount must be higher than zero'
    if not lastBlock[address(msg.sender)].field_512:
        user.length++
        user[user.length] = msg.sender
    lastBlock[address(msg.sender)].field_512 = block.number
    require arg1 < pool.length
    if arg2 + balance[arg1][msg.sender] < balance[arg1][msg.sender]:
        revert with 0, 'SafeMath: addition overflow'
    balance[arg1][msg.sender] += arg2
    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(pool[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    if not ext_code.hash(pool[arg1].field_0):
        revert with 0, 'Address: call to non-contract'
    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[608 len 4] = 0
    call pool[arg1].field_0 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[580 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[516]:
                revert with 0, 
                            32,
                            42,
                            0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 595 len 22]
    emit Deposit(arg1, arg2, msg.sender);
}



}
