contract main {




// =====================  Runtime code  =====================


#
#  - randomnessRequest(uint256 arg1)
#
uint256 fee;
address oraiAddress;
address oracleAddress;
uint256 random;
array of uint256 sub_8997ce4e;
array of uint256 sub_2e22873e;

function orai() {
    return oraiAddress
}

function sub_2e22873e(?) {
    return sub_2e22873e[0 len sub_2e22873e.length]
}

function random() {
    return random
}

function oracle() {
    return oracleAddress
}

function sub_8997ce4e(?) {
    return sub_8997ce4e[0 len sub_8997ce4e.length]
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function fulfillRandomness(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    random = arg2
}



}
