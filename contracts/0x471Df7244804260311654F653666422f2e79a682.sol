contract main {




// =====================  Runtime code  =====================


#
#  - syncMintingDataAuto(uint16 arg1)
#  - syncMintingDataAutoUser()
#  - syncMintingDataRange(uint16 arg1, uint16 arg2)
#
const baseNumber = 13333

const MAX_TOKENS = 10000


address owner;
mapping of uint256 stor2;
uint256 multiplier;
uint16 updatedRewardsNum;
uint16 maxUpdatesForBlockUser; offset 16

function multiplier() {
    return multiplier
}

function owner() {
    return owner
}

function updatedRewardsNum() {
    return updatedRewardsNum
}

function maxUpdatesForBlockUser() {
    return maxUpdatesForBlockUser
}

function _fallback() payable {
    revert
}

function deposit() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMultiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    multiplier = arg1
}

function setMaxUpdatesForBlockUser(uint16 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxUpdatesForBlockUser = arg1
}

function withdraw() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, 'non-existent address'
    if stor2[address(arg1)] and multiplier > -1 / stor2[address(arg1)]:
        revert with 'NH{q', 17
    return (stor2[address(arg1)] * multiplier)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function withdrawAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'There are not enough AVAX to pay the transaction'
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawReward() {
    if not msg.sender:
        revert with 0, 'non-existent address'
    if stor2[address(msg.sender)] and multiplier > -1 / stor2[address(msg.sender)]:
        revert with 'NH{q', 17
    if stor2[address(msg.sender)] * multiplier > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'There are not enough AVAX to pay the transaction, please wait the deposit of new AVAX, we will deposit asap'
    if stor2[address(msg.sender)] * multiplier <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Rewards are 0, if you already have minted a NFT, please wait the sync of the contract, we will do it asap'
    stor2[address(msg.sender)] = 0
    call msg.sender with:
       value stor2[address(msg.sender)] * multiplier wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
